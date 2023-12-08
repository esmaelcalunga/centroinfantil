<?php include("conexao.php");



session_start();

if (!isset($_SESSION['logado'])) :
  header('Location: login.php');
endif;

$nome = $_SESSION['nomedofuncionariologado'];

$idlogado = $_SESSION['funcionariologado'];
$nomelogado = $_SESSION['nomedofuncionariologado'];
$painellogado = $_SESSION['painel'];

$categoria = isset($_GET['categoria']) ? $_GET['categoria'] : "todos";
$mesdevenda = isset($_GET['mesdevenda']) ? $_GET['mesdevenda'] : "";
$mesdevenda = mysqli_escape_string($conexao, $mesdevenda);
$anodevenda = isset($_GET['anodevenda']) ? $_GET['anodevenda'] : "";
$anodevenda = mysqli_escape_string($conexao, $anodevenda);


if (!($painellogado == "administrador" || $painellogado == "secretaria1" || $painellogado == "secretaria2")) {

  header('Location: login.php');
}

if (isset($_POST['cadastrar'])) {

  if (!empty(trim($_POST['produto']))) {

    $produto = mysqli_escape_string($conexao,  $_POST['produto']);
    $preco = mysqli_escape_string($conexao,  $_POST['preco']);
    $precodecompra = mysqli_escape_string($conexao,  $_POST['precodecompra']);
    $quantidade = mysqli_escape_string($conexao,  $_POST['quantidade']);
    $stockminimo = mysqli_escape_string($conexao,  $_POST['stockminimo']);
    $datadeexpiracao = mysqli_escape_string($conexao,  $_POST['datadeexpiracao']);



    $produtoigual = mysqli_num_rows(mysqli_query($conexao, "SELECT idproduto FROM produtos where nomedoproduto='$produto'"));
    if ($produtoigual == 0) {

      $salvar = mysqli_query($conexao, "INSERT INTO `produtos` (`idproduto`, `nomedoproduto`, `preco`,`precodecompra`, `quantidade`, `data`,  `datadeexpiracao`, `stockminimo`) VALUES (NULL, '$produto', '$preco','$precodecompra', '$quantidade', CURRENT_TIMESTAMP, STR_TO_DATE('$datadeexpiracao', '%d/%m/%Y'), '$stockminimo')");

      if ($salvar) {
        $idprodutonostock = mysqli_fetch_array(mysqli_query($conexao, "SELECT idproduto FROM produtos where nomedoproduto='$produto' limit 1"))[0];

        $guardandonostock = mysqli_query($conexao, "INSERT INTO `stock` (`idstock`, `idproduto`, `precodevenda`, `precodecompra`, `quantidade`, `datadecadastro`) VALUES (NULL, '$idprodutonostock', '$preco', '$precodecompra', '$quantidade', CURRENT_TIMESTAMP)");

        if ($salvar) {

          $acerto[] = " produto $produto, cadastrado com sucesso";
        } else {

          $erros[] = "Ocorreu um erro Ao cadastrar o  produto, tente novamente";
        }
      } else {
        $erros[] = "Ocorreu um erro Ao cadastrar o  produto, tente novamente";
      }
    } else {
      $erros[] = "Já Existe um produto com o mesmo nome! Por Favor acrescente alguma palavra ou sigla para o diferenciar!";
    }
  } else {
    $erros[] = "O campo nome do produto não pode estar vazio!";
  }
}

$cardeeditar = "";




include("cabecalho.php"); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

  <?php
  if (!empty($erros)) :
    foreach ($erros as $erros) :
      echo '<div class="alert alert-danger">' . $erros . '</div>';
    endforeach;
  endif;
  ?>
  <?php
  if (!empty($acerto)) :
    foreach ($acerto as $acerto) :
      echo '<div class="alert alert-success">' . $acerto . '</div>';
    endforeach;
  endif;
  ?>




  <?php

  $totaldeprodutos = mysqli_num_rows(mysqli_query($conexao, "select idproduto FROM produtos"));

  ?>
  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">Ementa Mensal <?php if (isset($_GET['mesdevenda'])) {
                                                    echo "| $mesdevenda/$anodevenda";
                                                  } ?> </h1> <br>

  <?php include("estilocarde.php"); ?>
  <button id="myBtn" class="btn btn-primary">Escolher o mês</button>
  <?php if ($painellogado == "administrador") { ?>
    <button id="myBtnreclamacoes" class="btn btn-info" title="Cadastrar uma entrada">Fazer Ementa</button>
  <?php  } else { ?>
    <span id="myBtnreclamacoes"></span>
  <?php } ?>
  <div id="myModal" class="modal">
    <div class="modal-content">
      <span id="close">&times;</span>
      <form class="user" action="" method="">

        <div class="form-group">

          <span>Ano Lectivo</span>
          <select name="anodevenda" required class="form-control">
            <?php

            $ano = date('Y');
            $lista = mysqli_query($conexao, "SELECT DISTINCT(YEAR(datadaentrada)) as ano from entradas order by YEAR(datadaentrada) desc");

            while ($exibir = $lista->fetch_array()) {

              $ano = $exibir["ano"];
            ?>
              <option <?php if (date('Y') == $exibir["ano"]) { ?> selected="" <?php } ?> value="<?php echo $exibir["ano"]; ?>"><?php echo $exibir["ano"]; ?></option>
            <?php } ?>
            <option <?php if (date('Y') == $ano + 1) { ?> selected="" <?php } ?> value="<?php echo $ano + 1; ?>"><?php echo $ano + 1; ?></option>
          </select>
        </div>


        <div class="form-group">
          <select name="mesdevenda" class="form-control">
            <option <?php $mesactual = date('m');
                    if ($mesactual == 1) { ?> selected="" <?php } ?> value="01">Janeiro</option>
            <option <?php if ($mesactual == 2) { ?> selected="" <?php } ?> value="02">Fevereiro</option>
            <option <?php if ($mesactual == 3) { ?> selected="" <?php } ?> value="03">Marco</option>
            <option <?php if ($mesactual == 4) { ?> selected="" <?php } ?> value="04">Abril</option>
            <option <?php if ($mesactual == 5) { ?> selected="" <?php } ?> value="05">Maio</option>
            <option <?php if ($mesactual == 6) { ?> selected="" <?php } ?> value="06">Junho</option>
            <option <?php if ($mesactual == 7) { ?> selected="" <?php } ?> value="07">Julho</option>
            <option <?php if ($mesactual == 8) { ?> selected="" <?php } ?> value="08">Agosto</option>
            <option <?php if ($mesactual == 9) { ?> selected="" <?php } ?> value="09">Setembro</option>
            <option <?php if ($mesactual == 10) { ?> selected="" <?php } ?> value="10">Outubro</option>
            <option <?php if ($mesactual == 11) { ?> selected="" <?php } ?> value="11">Novembro</option>
            <option <?php if ($mesactual == 12) { ?> selected="" <?php } ?> value="12">Dezembro</option>
          </select>
          <br>
          <input type="submit" value="Visualizar Relatório" class="btn btn-primary" style="float: rigth;">
        </div>

      </form>
    </div>
  </div>



  <div id="myModalreclamacoes" class="modal">
    <div class="modal-content">
      <span id="closereclamacoes"> &times;</span>
      <form class="user" method="post" action="">
        <h2>Fazer ementa</h2>
        <span style="font-size: 11px"> </p>

          <div class="form-group">

            <span>Ano Lectivo</span>
            <select name="anodevenda" required class="form-control">
              <?php

              $ano = date('Y');
              $lista = mysqli_query($conexao, "SELECT DISTINCT(YEAR(datadaentrada)) as ano from entradas order by YEAR(datadaentrada) desc");

              while ($exibir = $lista->fetch_array()) {

                $ano = $exibir["ano"];
              ?>
                <option <?php if (date('Y') == $exibir["ano"]) { ?> selected="" <?php } ?> value="<?php echo $exibir["ano"]; ?>"><?php echo $exibir["ano"]; ?></option>
              <?php } ?>
              <option <?php if (date('Y') == $ano + 1) { ?> selected="" <?php } ?> value="<?php echo $ano + 1; ?>"><?php echo $ano + 1; ?></option>
            </select>
          </div>


          <div class="form-group">
            <select name="mesdevenda" class="form-control">
              <option <?php $mesactual = date('m');
                      if ($mesactual == 1) { ?> selected="" <?php } ?> value="01">Janeiro</option>
              <option <?php if ($mesactual == 2) { ?> selected="" <?php } ?> value="02">Fevereiro</option>
              <option <?php if ($mesactual == 3) { ?> selected="" <?php } ?> value="03">Marco</option>
              <option <?php if ($mesactual == 4) { ?> selected="" <?php } ?> value="04">Abril</option>
              <option <?php if ($mesactual == 5) { ?> selected="" <?php } ?> value="05">Maio</option>
              <option <?php if ($mesactual == 6) { ?> selected="" <?php } ?> value="06">Junho</option>
              <option <?php if ($mesactual == 7) { ?> selected="" <?php } ?> value="07">Julho</option>
              <option <?php if ($mesactual == 8) { ?> selected="" <?php } ?> value="08">Agosto</option>
              <option <?php if ($mesactual == 9) { ?> selected="" <?php } ?> value="09">Setembro</option>
              <option <?php if ($mesactual == 10) { ?> selected="" <?php } ?> value="10">Outubro</option>
              <option <?php if ($mesactual == 11) { ?> selected="" <?php } ?> value="11">Novembro</option>
              <option <?php if ($mesactual == 12) { ?> selected="" <?php } ?> value="12">Dezembro</option>
            </select>
          </div>



          <br>
          <input type="submit" name="cadastrar" value="Fazer Ementa Mensal" class="btn btn-primary" style="float: rigth;">

      </form>
    </div>
  </div>


  <script>
    var btn = document.getElementById("myBtn");
    var btnreclamacoes = document.getElementById("myBtnreclamacoes");

    var modal = document.getElementById("myModal");
    var modalreclamacoes = document.getElementById("myModalreclamacoes");

    var span = document.getElementById("close");
    var spanreclamacoes = document.getElementById("closereclamacoes");

    btn.addEventListener("click", () => {
      modal.style.display = "block";
    })
    span.addEventListener("click", () => {
      modal.style.display = "none";
    })
    window.onclick = (event) => {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    btnreclamacoes.addEventListener("click", () => {
      modalreclamacoes.style.display = "block";
    })
    spanreclamacoes.addEventListener("click", () => {
      modalreclamacoes.style.display = "none";
    })
    window.onclick = (event) => {
      if (event.target == modalreclamacoes) {
        modalreclamacoes.style.display = "none";
      }
    }
  </script>

  <br><br>

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Tabela de preços</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">

        <?php
        $mesAtual = date('m');
        $anoAtual = date('Y');
        $diasNoMes = cal_days_in_month(CAL_GREGORIAN, $mesAtual, $anoAtual);
        $primeiroDia = date("N", strtotime("{$anoAtual}-{$mesAtual}-01"));

        // Início da tabela com classes
        echo "<table class='table table-bordered' id='dataTable' width='100%' cellspacing='0' border=1>";
        echo "<thead><tr><th>Semanas</th><th>Alimentação</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th></tr></thead>";
        echo "<tbody>";

        // Loop para as semanas
        for ($semana = 1; $semana <= 5; $semana++) {
          echo "<tr><td rowspan='3'>{$semana}ª Semana</td><td>Pequeno Almoço</td>";

          // Loop para os dias da semana
          for ($diaSemana = 1; $diaSemana <= 5; $diaSemana++) {
            // Calcula o número do dia no mês
            $diaNoMes = ($semana - 1) * 7 + $diaSemana - $primeiroDia + 1;

            // Verifica se o dia está dentro do mês
            if ($diaNoMes > 0 && $diaNoMes <= $diasNoMes) {
              echo "<td>{$diaNoMes}</td>";
            } else {
              echo "<td></td>";
            }
          }

          echo "</tr><tr><td>Almoço</td>";

          // Reinicia o loop para os dias da semana
          for ($diaSemana = 1; $diaSemana <= 5; $diaSemana++) {
            $diaNoMes = ($semana - 1) * 7 + $diaSemana - $primeiroDia + 1;
            if ($diaNoMes > 0 && $diaNoMes <= $diasNoMes) {
              echo "<td>{$diaNoMes}</td>";
            } else {
              echo "<td></td>";
            }
          }

          echo "</tr><tr><td>Lanche</td>";

          // Reinicia o loop para os dias da semana
          for ($diaSemana = 1; $diaSemana <= 5; $diaSemana++) {
            $diaNoMes = ($semana - 1) * 7 + $diaSemana - $primeiroDia + 1;
            if ($diaNoMes > 0 && $diaNoMes <= $diasNoMes) {
              echo "<td>{$diaNoMes}</td>";
            } else {
              echo "<td></td>";
            }
          }

          echo "</tr>";
        }

        // Fim da tabela
        echo "</tbody></table>";
        ?>



      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; CalungaSOFT 2021</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>

<!-- Jquery JS-->
<!-- Vendor JS-->
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/datepicker/moment.min.js"></script>
<script src="vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="js/global.js"></script>

</body>

</html>