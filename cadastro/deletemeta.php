<?php

include("../conexao.php");

session_start();

if(!isset($_SESSION['logado'])):
   header('Location: login.php');
endif;
$idcaixa=isset($_SESSION['idcaixa']);

$nome=$_SESSION['nomedofuncionariologado'];
 
$idlogado=$_SESSION['funcionariologado'] ;
$nomelogado=$_SESSION['nomedofuncionariologado'];
$painellogado=$_SESSION['painel'];

 

if(isset($_POST["id"])){

   $id=mysqli_escape_string($conexao, $_POST['id']);
 
           
  
        if(mysqli_query($conexao, "Delete from metas where idmeta='$id'")){
            echo '<div class="alert alert-success"> Registro Eliminado com Sucesso</div>';
       }
       else{
        echo '<div class="alert alert-danger">Ocorreu um erro ao eliminar registro!</div>';
     
    }
 

}


?>