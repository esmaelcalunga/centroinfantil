DROP TABLE IF EXISTS actividades;

CREATE TABLE `actividades` (
  `idactividade` int(11) NOT NULL AUTO_INCREMENT,
  `idanolectivo` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text DEFAULT NULL,
  `propina` double NOT NULL DEFAULT 0,
  `matricula` double NOT NULL DEFAULT 0,
  `idcoordenador` int(11) NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idactividade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO actividades VALUES("1","4","Aulas de Capoeira","Para quem quer desenvolver actividades motoras","5500","5000","31","2023-12-08 12:31:31");
INSERT INTO actividades VALUES("2","4","Aulas de Dança","pra quem gosta do ritmos","12000","4900","0","2023-12-08 12:31:41");



DROP TABLE IF EXISTS administradores;

CREATE TABLE `administradores` (
  `idadministrador` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` varchar(11) NOT NULL,
  `painel` varchar(120) NOT NULL DEFAULT 'funcionario',
  `username` varchar(100) NOT NULL,
  `senha` varchar(260) NOT NULL,
  `acesso` varchar(90) NOT NULL DEFAULT 'desbloqueado',
  `ultimoacesso` datetime DEFAULT NULL,
  `horadodeslogue` datetime DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idadministrador`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO administradores VALUES("13","44","secretaria1","joana","$2y$10$bE.DbgFr0r6Ul30H8l.A1uML6cNJnZoH0rmFzSgDV49A9fMdhg8Vq","desbloqueado","2023-05-08 15:10:42","2023-02-27 13:33:23","2023-08-12 19:50:43");
INSERT INTO administradores VALUES("14","45","areapedagogica","floide","$2y$10$3AgFKcaE6TeV2AuxpsL/Aee4gIkQCZ6DHKuwzz0YUxDemtqWSifrO","desbloqueado","2008-01-01 00:03:23","2023-01-11 11:37:19","2023-08-12 19:50:43");
INSERT INTO administradores VALUES("15","43","administrador","tamara","$2y$10$dY6JdQU4uzO9YC27wy045OrgmAOitvQyknClJow8pY81BNNDoKLPS","desbloqueado","2007-12-31 23:02:53","2007-12-31 23:24:28","2023-08-12 19:50:43");
INSERT INTO administradores VALUES("16","31","administrador","esmael00","$2y$10$EWQps2A4ziwed3hftU/YUehGlANnJ9Pxm/fouCvf9pSmTIfk7Ekja","desbloqueado","2024-01-15 10:59:53","2024-01-04 06:39:39","2024-01-15 10:59:53");
INSERT INTO administradores VALUES("17","47","professor","123","$2y$10$6PLakV.bfhkzkbE/JSwFQufXvrmidHWaUtsiGhNojEBuhbn9tD4uu","desbloqueado","2023-12-18 09:25:43","2023-12-18 09:25:57","2023-12-18 09:25:57");
INSERT INTO administradores VALUES("19","54","RH","edna","$2y$10$0UyZnFNfyYRkPzB6pe2g9ufE13AsWjJ1nX7ysjn00UztGPeENdUpC","desbloqueado","2023-11-16 05:58:38","2023-11-16 10:04:05","2023-11-16 10:04:05");
INSERT INTO administradores VALUES("20","43","areapedagogica","pd","$2y$10$jO8fObytLOnBkocConoPiOYlijApOsgArPAVxqS91HnYDQP92MyQW","desbloqueado","2024-01-04 06:03:12","2024-01-04 06:14:42","2024-01-04 06:14:42");
INSERT INTO administradores VALUES("21","46","professor","pp","$2y$10$vytHzfrsTXnLOV7gA84xN.1RDrIEq8OqgMXrcO9PuLbuTcUGZwcQ2","desbloqueado","2024-01-04 06:15:28","2024-01-04 06:17:40","2024-01-04 06:17:40");
INSERT INTO administradores VALUES("22","31","professor","pe","$2y$10$.cb6.xLs8XO9IwHwCYu38OTK4usi78pdBeSYFgTkrA5dtkELSnw4.","desbloqueado","2024-01-04 06:39:49","2024-01-04 12:39:06","2024-01-04 12:39:06");



DROP TABLE IF EXISTS administradoresalunos;

CREATE TABLE `administradoresalunos` (
  `idadministradoraluno` int(11) NOT NULL AUTO_INCREMENT,
  `idmatriculaconfirmacao` varchar(11) NOT NULL,
  `idaluno` int(11) NOT NULL,
  `painel` varchar(120) NOT NULL DEFAULT 'funcionario',
  `username` varchar(100) NOT NULL,
  `senha` varchar(260) NOT NULL,
  `acesso` varchar(90) NOT NULL DEFAULT 'desbloqueado',
  `ultimoacesso` datetime DEFAULT NULL,
  `horadodeslogue` datetime DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idadministradoraluno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS agenda;

CREATE TABLE `agenda` (
  `idagenda` int(11) NOT NULL AUTO_INCREMENT,
  `nomedaactividade` varchar(220) DEFAULT NULL,
  `datainicio` date DEFAULT NULL,
  `datafim` date DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `obs` varchar(220) DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafim` time DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idagenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS alunos;

CREATE TABLE `alunos` (
  `idaluno` int(11) NOT NULL AUTO_INCREMENT,
  `nomecompleto` varchar(200) NOT NULL,
  `sexo` varchar(20) DEFAULT 'Masculino',
  `nomedopai` varchar(200) DEFAULT NULL,
  `nomedamae` varchar(220) DEFAULT NULL,
  `naturalidade` varchar(200) DEFAULT 'Luanda',
  `nacionalidade` varchar(220) NOT NULL DEFAULT 'Angolana',
  `provincia` varchar(220) DEFAULT 'Luanda',
  `numerodobioucedula` varchar(100) DEFAULT NULL,
  `arquivodeidentificacao` varchar(201) NOT NULL DEFAULT 'Luanda',
  `deficiencia` varchar(200) NOT NULL DEFAULT 'Nenhuma',
  `escoladeorigem` varchar(200) DEFAULT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  `telefoneincarregados` varchar(200) DEFAULT NULL,
  `profissao` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `anodeentrada` int(4) DEFAULT NULL,
  `datadenascimento` date DEFAULT NULL,
  `datadeexpiracaodobi` date DEFAULT NULL,
  `numerodeprocesso` int(11) DEFAULT NULL,
  `morada` varchar(220) DEFAULT NULL,
  `religiao` varchar(200) DEFAULT NULL,
  `nomedoencarregado` varchar(200) DEFAULT NULL,
  `datadecadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `estatus` varchar(200) NOT NULL DEFAULT 'activo',
  `obs` text DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `caminhodafoto` varchar(222) DEFAULT NULL,
  `nifencarregado` varchar(222) DEFAULT NULL,
  `contactopai` varchar(222) DEFAULT NULL,
  `contactomae` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=1324 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO alunos VALUES("1144","Kembi Elizabeth Feliciana Kuluca","Femenino","Lucombo André Kuluca","Graça Isabel Feliciano","Viana","Angolana","Luanda","","Luanda","","","","922038640","","","2022","2017-05-29","0000-00-00","358","","","Lucombo André Kuluca","2022-08-29 11:39:56","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1145","Elizandra Guia Francisco José","Femenino","Zinho Francisco José","Ruth Domingos Manuel Guia","Catete","Angolana","Luanda","010104149BO040","Luanda","","","","924883086/924628633","","","2022","2010-02-05","2024-03-25","359","","","Zinho Francisco José","2022-08-29 11:43:57","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1146","Inácia Madalena B. Rocha","Femenino","Assunção da Rocha","Domingas A. da Rocha","Luanda","Angolana","Luanda","3282","Luanda","","","","923455248","","","2022","2006-10-22","0000-00-00","360","","","Assunção da Rocha","2022-08-29 11:56:47","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1147","Trausio Chimbungule Hebo","Masculino","Mateus Manuel Hebo","Albertina Domingos Chimbungule","Ingombota","Angolana","Luanda","009545587LA041","Luanda","","","","927559381","","","2022","2010-09-21","2023-07-10","361","","","Mateus Manuel Hebo","2022-08-29 12:04:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1148","António José Chico","Masculino","Rofino Chico","Julieta José","Viana","Angolana","Luanda","023726862LA051","Luanda","","","","925828235","","","2022","2002-02-06","0000-00-00","362","","","Rofino Chico","2022-08-29 12:08:28","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1149","Laura Pontes dos Santos","Femenino","Manuel António dos Santos","Ana Maria S. S. Pontes","Viana","Angolana","Luanda","","Luanda","","","","932112149/927633740","","","2022","2014-10-08","0000-00-00","365","","","Manuel António dos Santos","2022-08-31 10:34:02","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1150","Anacleto Pontes dos Santos","Masculino","Manuel António os Santos","Ana Maria Sebastião de Sousa Pontes","Cazenga","Angolana","Luanda","","Luanda","","","","932112149/927633740","","","2022","2009-09-08","0000-00-00","366","","","Manuel António os Santos","2022-08-31 10:37:06","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1151","Jocelina Miguel Manuel","Femenino","Nelson Sebastião Manuel","Filomena Miguel Manuel","Luanda","Angolana","Luanda","","Luanda","","","","924649293","","","2022","0000-00-00","0000-00-00","379","","","Nelson Sebastião Manuel","2022-08-31 15:20:59","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1152","Karina Vunge Bembuca","Femenino","Gouveia André Bembuca","Jorgina Nazareth Vunge","Viana","Angolana","Luanda","","Luanda","","","","923885645/922520380","","","2022","2017-03-28","0000-00-00","381","","","Gouveia André Bembuca","2022-08-31 15:30:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1153","Kerubim Suzana K. Pedro","Masculino","Makizayila Z. Pedro","Nsangu Kisoka","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","941938629","","","2022","2013-06-22","0000-00-00","383","","","Makizayila Z. Pedro","2022-08-31 15:55:30","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1154","Maria Imaculada Luis Hossi","Femenino","Faustino Chico","Isabel Luisa","Ingombota","Angolana","Luanda","004978992LA046","Luanda","","","","9279945/931292880","","","2022","2002-08-17","2026-09-20","384","","","Faustino Chico","2022-08-31 16:06:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1155","Ventura Mucombe José Domingos","Masculino","António José Domingos","Domingas Soares Mucombe","Kunda dia Baze","Angolana","","","Luanda","","","","923208822","","","2022","2007-02-26","0000-00-00","386","","","António José Domingos","2022-08-31 16:12:59","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1156","Evanilda Garcia João","Femenino","Edson Quingongo P. João","Engrácia da Costa Garcia","Ingombota","Angolana","Luanda","","Luanda","","","","943823084/","","","2022","2012-03-12","0000-00-00","399","","","Edson Quingongo P. João","2022-09-01 17:32:39","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1157","Bruno Garcia João","Masculino","Edson Quingongo Policarpo João","Engrácia da Costa Garcia","Viana","Angolana","Luanda","","Luanda","","","","943823084","","","2022","2017-07-16","0000-00-00","400","","","Edson Quingongo Policarpo João","2022-09-01 17:39:39","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1158","Edgar Lumbo Nhanga","Masculino","Manuel Nhanga","Marquinha António Lumbo","Cazenga","Angolana","Luanda","","Luanda","","","","","","","2022","2010-01-27","0000-00-00","401","","","Manuel Nhanga","2022-09-01 17:43:44","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1159","Alberto Raul Cawende","Masculino","Raul Cawende","Filomena Alberto","Viana","Angolana","Luanda","","Luanda","","","","941394680","","","2022","2006-09-24","0000-00-00","402","","","Raul Cawende","2022-09-01 17:46:38","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1160","Celma Sapalo Domingos","Femenino","Francisco Silvano Domingos","Helena Quaresma F. Sapalo","Maianga","Angolana","Luanda","","Luanda","","","","926041034","","","2022","2011-08-20","0000-00-00","404","","","Francisco Silvano Domingos","2022-09-01 17:58:22","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1161","Eugénio Gabriel Manuel da Silva","Masculino","Jorge Manuel da Silva","Gizela Filomena José Manuel","","Angolana","","","Luanda","","","","923323795","","","2022","0000-00-00","0000-00-00","407","","","Jorge Manuel da Silva","2022-09-01 18:52:17","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1162","Fláviano Mbuco Cololo","Masculino","Victor Osvaldo Cololo","Josefina Congolo Mbuco","Kilamba Kiaxi","Angolana","","","Luanda","","","","926875148/927988424","","","2022","2015-12-19","0000-00-00","413","","","Victor Osvaldo Cololo","2022-09-01 19:46:39","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1163","Lúria Júlio de Almeida","Femenino","Arão Chitunda de Almeida","Lucinda José Júlio","Viana","Angolana","","","Luanda","","","","934353037","","","2022","2012-12-02","0000-00-00","424","","","Arão Chitunda de Almeida","2022-09-01 20:37:59","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1164","Gabriel Kimuanga Calanzangi","Masculino","Diogo António Calazangi","Elisa M. Calazangi","Luanda","Angolana","","","Luanda","","","","944947362","","","2022","0000-00-00","0000-00-00","425","","","Diogo António Calazangi","2022-09-01 20:42:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1165","Jacira Manuel Londa","Femenino",".........................","Marcelina António Manuel Londa","Soyo","Angolana","Zaire","010182920ZE043","Luanda","","","","938516950","","","2022","2007-07-06","2024-05-15","426","","",".........................","2022-09-01 20:46:57","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1166","Denise Yasmim K. Calanzange","Femenino","Diogo António Calazangi","Elisa M. Calanzangi","Luanda","Angolana","Luanda","","Luanda","","","","944947362","","","2022","2017-04-12","0000-00-00","427","","","Diogo António Calazangi","2022-09-01 20:50:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1167","Andreia Kimuanza Calazangi","Femenino","Diogo António Calazangi","Elisa M. Calanzangi","Luanda","Angolana","Luanda","","Luanda","","","","944947362","","","2022","2009-05-20","0000-00-00","428","","","Diogo António Calazangi","2022-09-01 20:52:53","activo","","2024-01-15 11:18:26","65a514822a0be.jpg","","","");
INSERT INTO alunos VALUES("1168","Antonio Luboco Mafuta","Masculino","António Mafuta","Nkuna Luzizila Regina","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","945253814","","","2022","2015-05-22","0000-00-00","429","","","António Mafuta","2022-09-01 20:56:14","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1169","Emanuel João Mussassa","Masculino","Lucas Felix Mussassa","Adelina Carlos João","Luanda","Angolana","Luanda","","Luanda","","","","924463062","","","2022","0000-00-00","0000-00-00","430","","","Lucas Felix Mussassa","2022-09-01 21:00:34","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1170","Florinda Adriano Correia","Femenino","António Paulo Correia","Feliciana Luis Adriano","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","938789470","","","2022","2006-09-29","0000-00-00","431","","","António Paulo Correia","2022-09-01 21:03:52","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1171","Eliezer Domingos Jerónimo","Masculino","Cassule Diogo Jerónimo","Maria W. Domingos Jerónimo","Viana","Angolana","Luanda","","Luanda","","","","928647191","","","2022","2017-02-11","0000-00-00","433","","","Cassule Diogo Jerónimo","2022-09-01 21:11:06","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1172","Marcelina Dovales Gongo","Femenino","Sebastião da Silva Gongo","Filomena Maria António Dovales","Malanje","Angolana","Malanje","020245262ME058","Luanda","","","","936228283","","","2022","2004-10-01","2024-10-27","439","","","Sebastião da Silva Gongo","2022-09-07 09:55:52","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1173","Madruga dos Santos Monteiro","Masculino","Fernandes Monteiro","Santa Luís dos Santos","Cuanza Norte","Angolana","","008867581KN044","Luanda","","","","931838171","","","2022","2007-08-27","2022-05-08","440","","","Fernandes Monteiro","2022-09-07 10:01:06","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1174","Edgar Joaquim Eduardo","Masculino","José Francisco António Eduardo","Núria Cardoso de Matos Joquim","Ingombotas","Angolana","Luanda","007646069LA040","Luanda","","","","940753948","","","2022","2009-05-22","2026-10-14","441","","","José Francisco António Eduardo","2022-09-07 10:08:33","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1175","Irineu Miguel Garcia","Masculino","Germano de Sousa Garcia","Indira Francisca Miguel","Viana","Angolana","Luanda","","Luanda","","","","935502684","","","2022","2013-04-17","0000-00-00","442","","","Germano de Sousa Garcia","2022-09-07 10:21:48","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1176","Herculano Enzo Bernardo Manuel","Masculino","Nelson Job Mariano Manuel","Denise da Conceição B. Manuel","Ingombotas","Angolana","Luanda","022043792LA053","Luanda","","","","923768069","","","2022","2008-10-11","2026-06-13","446","","","Nelson Job Mariano Manuel","2022-09-07 10:36:01","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1177","Elton José Cafuça Catenda","Masculino","José Catenda","Inês A. Catenda","Maianga","Angolana","Luanda","","Luanda","","","","923248304","","","2022","0000-00-00","0000-00-00","448","","","José Catenda","2022-09-07 10:53:48","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1178","Marcolino Cahiata Masseca","Masculino","Lucas António","Emília Paula Cahiata","Viana","Angolana","Luanda","","Luanda","","","","921477253","","","2022","2012-02-06","0000-00-00","456","","","Lucas António","2022-09-07 11:20:48","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1179","Soraya de Lemos Miguel","Femenino","João Maria Miguel","Maria Ana Xiquete de Lemos","Viana","Angolana","Luanda","","Luanda","","","","951512310","","","2022","2017-11-12","0000-00-00","462","","","João Maria Miguel","2022-09-07 11:53:24","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1180","Mauricio de Goveia Leite Dias","Masculino","Sérgio António L. Dias","Maria Ribeiro de G. Dias","Viana","Angolana","","009889699LA042","Luanda","","","","924318659","","","2022","2006-03-25","2023-12-19","464","","","Sérgio António L. Dias","2022-09-07 12:01:37","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1181","Celmira de Goveia Leite Dias","Femenino","Sérgio António L. Dias","Maria Ribeiro de Goveia Leite","Sambinzanga","Angolana","Luanda","009889309A045","Luanda","","","","924318659","","","2022","0000-00-00","2023-12-19","469","","","Sérgio António L. Dias","2022-09-07 12:21:51","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1182","Gabriel Breganha  Quibato","Masculino","Manuel F. Quibato","Luzia Kimbundo S. Breganha","Viana","Angolana","","","Luanda","","","","923552160","","","2022","2016-04-26","0000-00-00","480","","","Manuel F. Quibato","2022-09-07 12:55:30","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1183","Joelma Ebenesia Curimenha","Femenino","...................................","Benedita Maria Curimenha","Kilamba Kiaxi","Angolana","Luanda","010281871LA043","Luanda","","","","924704793","","","2022","2011-08-15","2024-06-30","484","","","...................................","2022-09-07 13:11:45","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1184","Rita Maria Curimenha","Femenino",".................................","Benedita Maria Curimenha","Kilamba Kiaxi","Angolana","Luanda","010257265LA046","Luanda","","","","924704793","","","2022","2009-05-04","2024-06-21","485","","",".................................","2022-09-07 13:23:51","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1185","Lúcia da Graça A. Cassua","Femenino","Emanuel de Jesus Cassua","Catarina Daniela Augustinho","Cazenga","Angolana","Luanda","","Luanda","","","","925499999","","","2022","0000-00-00","0000-00-00","487","","","Emanuel de Jesus Cassua","2022-09-07 13:33:16","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1186","Osvaldo de Jesus Curimenha","Femenino","........................","Bendita Maria Curimenha","Golf","Angolana","Luanda","008908117LA044","Luanda","","","","945834282","","","2022","2005-04-23","2027-06-08","489","","","........................","2022-09-07 13:56:19","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1187","Fabio Júnior António Dike","Masculino","Patrick O. Dike","Tânia Faustino António","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","931391325","","","2022","2015-05-25","0000-00-00","492","","","Patrick O. Dike","2022-09-07 14:12:10","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1188","Manuela Francisco António","Femenino","Manuel António Diogo Mateus","Leonor E. Pedro Francisco","Maianga","Angolana","","","Luanda","","","","947775145","","","2022","2011-08-24","0000-00-00","493","","","Manuel António Diogo Mateus","2022-09-07 14:16:07","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1189","Elizandro Domingos Noé","Masculino","Eduardo Francisco C. Noé","Cevardina Joaquim Domingos","Viana","Angolana","Luanda","","Luanda","","","","948478160","","","2022","2017-07-17","0000-00-00","495","","","Eduardo Francisco C. Noé","2022-09-07 14:26:10","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1190","Judith Nicolau Mendes","Femenino","Domingos Mendes","Teresa Nicolau","","Angolana","","","Luanda","","","","925674399","","","2022","2022-09-02","0000-00-00","496","","","Domingos Mendes","2022-09-07 16:51:11","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1191","Célio Sebastião Bento Caboco","Masculino","Alexandre Sebastião Caboco","Heslania da Conceição R. Bento","Cazenga","Angolana","Luanda","","Luanda","","","","923636182","","","2022","2011-08-21","0000-00-00","501","","","Alexandre Sebastião Caboco","2022-09-07 17:22:37","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1192","Augusta Ferreira Ginga","Femenino","Nelson Luis Fernandes","Luzia Maria Agostinho","","Angolana","","","Luanda","","","","943979073/941906578","","","2022","2017-10-07","0000-00-00","503","","","Nelson Luis Fernandes","2022-09-07 17:27:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1193","João Ferreira Ginga","Masculino","Nelson Luis Fernandes","Luzia Maria Agostinho","","Angolana","","","Luanda","","","","943979073/941906578","","","2022","2016-02-29","0000-00-00","504","","","Nelson Luis Fernandes","2022-09-07 17:29:33","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1194","Manuela Celestino Paulino Gonsalveis","Femenino","Manuel Celestino Gonsalveis","Emília Paulino","Caxito-Dande","Angolana","Caxito","","Luanda","","","","941611105","","","2022","2006-09-10","0000-00-00","506","","","Manuel Celestino Gonsalveis","2022-09-07 17:38:02","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1195","Jaoquim Manuel Fernando","Masculino","Manuel Celestino Gonsalveis","Teresa Fernandes","Luanda","Angolana","Luanda","","Luanda","","","","941611105/997944437","","","2022","0000-00-00","0000-00-00","507","","","Manuel Celestino Gonsalveis","2022-09-07 17:41:29","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1196","Joaquim Manuel Fernandes Celestino","Masculino","Manuel Celestino Gonsalveis","Teresa Fernandes Gonsalveis","Bengo","Angolana","Luanda","","Luanda","","","","941611105/997944437","","","2022","2002-10-20","0000-00-00","508","","","Manuel Celestino Gonsalveis","2022-09-07 17:45:47","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1197","Natália Fernandes Gonsalveis","Femenino","Manuel Celestino Gonsalveis","Teresa Fernandes","Maianga","Angolana","Luanda","","Luanda","","","","941611105/997944437","","","2022","2006-01-27","0000-00-00","509","","","Manuel Celestino Gonsalveis","2022-09-07 17:49:07","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1198","Antónia Gonga Canjungo","Femenino","Domingos Gonga Canjungo","Eugénia Canjungo Gonga","Viana","Angolana","Luanda","","Luanda","","","","925800268","","","2022","2007-06-30","0000-00-00","514","","","Domingos Gonga Canjungo","2022-09-07 18:18:38","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1199","Anaela Domingos dos Santos Escórcio","Femenino","Joel Ferreira Escócio","Sana Kuyela Tch. dos Santos","","Angolana","","","Luanda","","","","921424874","","","2022","2017-03-12","0000-00-00","515","","","Joel Ferreira Escócio","2022-09-07 18:22:31","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1200","Haniela Isabel dos Santos Escórcio","Femenino","Joel Ferreira Escócio","Sana Kuyela Tch. dos Santos","Ingombotas","Angolana","Luanda","","Luanda","","","","921424874","","","2022","2017-03-12","0000-00-00","516","","","Joel Ferreira Escócio","2022-09-07 18:25:03","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1201","Ester Maria de Jesus Manuel","Femenino","Osvaldo de Carvalho F. Manuel","Albertina Pedro de Jesus","Viana","Angolana","Luanda","","Luanda","","","","923594430","","","2022","2014-06-10","0000-00-00","517","","","Osvaldo de Carvalho F. Manuel","2022-09-07 18:28:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1202","Radija Marina João Matias","Femenino","Raimundo Pires Cristóvão","Albertina António Q. João","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","923313351","","","2022","2007-05-30","0000-00-00","528","","","Raimundo Pires Cristóvão","2022-09-09 07:46:05","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1203","Paula Capato Ulica Tchimdumdo","Femenino","António Tchimdumbo","Isabel Kapato Ulica","Viana","Angolana","Luanda","022375103LA059","Luanda","","","","921703533","","","2022","2010-07-09","2026-08-22","529","","","António Tchimdumbo","2022-09-09 07:51:55","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1204","Gilson José Mariano Tongonho","Masculino","José Mariano Tongonho Duarte","Maria Luisa Samacuenge","Huambo","Angolana","Huambo","","Luanda","","","","923943484","","","2022","0000-00-00","0000-00-00","530","","","José Mariano Tongonho Duarte","2022-09-09 07:59:29","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1205","Otaniel Wamuno Cangahi","Masculino","Osvaldo José Cangahi","Dania Cangahi","Luanda","Angolana","Luanda","","Luanda","","","","923343834","","","2022","2017-11-24","0000-00-00","532","","","Osvaldo José Cangahi","2022-09-09 08:04:43","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1206","Luciana Panda Vilombo","Femenino","André Leonardo Vilombo","Valquiria Luisa Valeiriano P. Vilombo","Viana","Angolana","Luanda","","Luanda","","","","926560536","","","2022","2017-02-20","0000-00-00","536","","","André Leonardo Vilombo","2022-09-09 08:19:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1207","Marlene Manuel Mariano","Femenino","Ramido Mariano","Luisa Balanga Manuel","Samba","Angolana","Luanda","","Luanda","","","","936916159","","","2022","2015-06-05","0000-00-00","538","","","Ramido Mariano","2022-09-09 08:47:38","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1208","Lourenço Augusto António Dala","Masculino","José Augusto Dala","Joana Cabaça António","Malanje","Angolana","Malanje","020227257ME059","Luanda","","","","925714979","","","2022","2005-11-25","2024-10-17","540","","","José Augusto Dala","2022-09-09 09:10:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1209","Ana Maria António","Femenino","............","Noémia Justino António","Cazenga","Angolana","Luanda","","Luanda","","","","947314475","","","2022","2012-01-28","0000-00-00","543","","","............","2022-09-09 09:35:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1210","Tonivaldo Francisco António","Masculino",".........................","Noémia Justino António","Cazenga","Angolana","Luanda","","Luanda","","","","923428895","","","2022","2009-06-01","0000-00-00","551","","",".........................","2022-09-09 10:42:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1211","Fernado Cassule Cristovão","Masculino","Venceslau Tavares Cristóvão","Eva António Cassule","Viana","Angolana","Luanda","","Luanda","","","","925406209","","","2022","2018-04-15","0000-00-00","554","","","Venceslau Tavares Cristóvão","2022-09-09 12:57:12","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1212","Fernado Chiquembe Soares","Masculino","Luis José Gomes Soares","Cristina Chulo C. Chiquemba","Viana","Angolana","Luanda","","Luanda","","","","998761299","","","2022","2014-11-11","0000-00-00","555","","","Luis José Gomes Soares","2022-09-09 13:03:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1213","Inês Diogo Mateus","Femenino","Alvaro Miguel João Mateus","Iracelma da Conceição O. Diogo","Viana","Angolana","Luanda","","Luanda","","","","922328939","","","2022","2009-05-02","0000-00-00","561","","","Alvaro Miguel João Mateus","2022-09-09 18:07:41","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1214","Marinela Armando Candumbo","Femenino","Alberto Candumbo","Francelina Valente Armando","Luanda","Angolana","Luanda","008873686LA041","Luanda","","","","927160146","","","2022","2003-05-25","2022-05-11","565","","","Alberto Candumbo","2022-09-12 10:24:39","activo","","2023-10-16 06:38:26","","69787989","","");
INSERT INTO alunos VALUES("1215","Verónica Tito Laurindo","Femenino","Jaime Joaquim Larindo","Domingas Cutemba Tito","Viana","Angolana","Luanda","023525994LA056","Luanda","","","","934291306","","","2022","2002-09-06","2027-05-19","567","","","Jaime Joaquim Larindo","2022-09-12 10:48:34","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1216","Kene de Jesus Texeira","Masculino","......................","Regina Alveis Texeira","Golungo Alto","Angolana","Cuanza Norte","009982378KN046","Luanda","","","","924371235","","","2022","2008-10-13","2024-01-31","572","","","......................","2022-09-12 11:31:00","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1217","Marcelina Colela Quissanga","Femenino","Mateus Muhongo Quissanga","Fernanda","Cazenga","Angolana","Luanda","","Luanda","","","","923741778","","","2022","2009-04-27","0000-00-00","575","","","Mateus Muhongo Quissanga","2022-09-12 14:32:49","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1218","Utima Victória Manuel Brandão","Femenino","André de Jesus Brandão","Victória João Agostinho Manuel","Belas","Angolana","Luanda","","Luanda","","","","931534894","","","2022","2017-03-22","0000-00-00","577","","","André de Jesus Brandão","2022-09-12 14:40:04","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1219","Rita Gombo Cassoma","Femenino","Manuel Cassoma","Juliana Gombo","Viana","Angolana","Luanda","008632469LA048","Luanda","","","","","","","2022","2001-05-10","2027-04-11","578","","","Manuel Cassoma","2022-09-12 14:51:07","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1220","Zola Victória Manuel Brandão","Femenino","André de Jesus Brandão","Victória João Agostinho Manuel","Belas","Angolana","Luanda","","Luanda","","","","923425994","","","2022","2017-03-22","0000-00-00","579","","","André de Jesus Brandão","2022-09-12 14:56:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1221","Emiliana de Jesus Carlos Olo","Femenino","Eliseu José Suca Olo","Isabel de Jesus S. Pataca","Ingombotas","Angolana","Luanda","022430438LA055","Luanda","","","","945995563/924533457","","","2022","2008-10-17","0000-00-00","584","","","Eliseu José Suca Olo","2022-09-12 15:46:04","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1222","Paulina Simão Buka","Femenino","Kams Pedro Buka","Maria Augusto Simão","Sambinzanga","Angolana","Luanda","","Luanda","","","","940451641","","","2022","2015-12-02","0000-00-00","591","","","Kams Pedro Buka","2022-09-14 09:00:26","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1223","Kélsia Catarina Neto Caiombe","Femenino","Mateus Manuel Bumba Caiombe","Isabel dos Prazeres N. D. Caiombe","Viana","Angolana","Luanda","0207115811LA050","Luanda","","","","923626184","","","2022","2010-06-06","2025-06-01","593","","","Mateus Manuel Bumba Caiombe","2022-09-14 09:38:45","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1224","Mário José Ferreira","Masculino","Milton Domingos Alexandre Ferreira","Luisa da Conceição José","Viana","Angolana","Luanda","","Luanda","","","","928970604","","","2022","2015-07-27","0000-00-00","595","","","Milton Domingos Alexandre Ferreira","2022-09-14 12:17:32","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1225","Délcio da Purificação D. Francisco","Masculino","Geovane Afonso Francisco","Carmem Sheila da Silva Domingos","Viana","Angolana","Luanda","","Luanda","","","","929158614","","","2022","2018-04-03","0000-00-00","600","","","Geovane Afonso Francisco","2022-09-14 12:40:18","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1226","Pedro Agostinho da Silva Buiti","Masculino","Bruno da Silva Massanga Buiti","Eunice Maria Cabomo Agostinho","Maianga","Angolana","Luanda","","Luanda","","","","934174360","","","2022","2016-11-24","0000-00-00","601","","","Bruno da Silva Massanga Buiti","2022-09-14 12:45:44","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1227","Yasmin Henriqueta Tchimungo Kamongo","Masculino","Valdano Júlio S. Kamongo","Odeth Américo Tchimungo","Sambinzanga","Angolana","Luanda","","Luanda","","","","934903905","","","2022","2017-10-13","0000-00-00","603","","","Valdano Júlio S. Kamongo","2022-09-14 12:54:26","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1228","Manuel Francisco Ngola  Caniguida","Masculino","Francisco Caniguida","Maria ngola","","Angolana","Malanje","008161074LA044","Luanda","","","","","","","2022","2008-09-22","2016-04-22","606","","","Francisco Caniguida","2022-09-14 13:18:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1229","Josiana Jorgina Diogo Francisco","Femenino","Jorge Adriano Francisco","Conceição de Almeida da Cruz","Cazenga","Angolana","Luanda","022298045LA052","Luanda","","","","928318847","","","2022","2007-08-30","2026-08-04","607","","","Jorge Adriano Francisco","2022-09-14 13:35:09","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1230","Emanuela Isabel Chingalule João","Femenino","Bernabe Daniel D0omingos João","Felomena Namela","Viana","Angolana","Luanda","","Luanda","","","","949845724","","","2022","2009-02-14","0000-00-00","608","","","Bernabe Daniel D0omingos João","2022-09-14 13:43:22","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1231","Isabel Kumbo","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","611","","","","2022-09-14 14:21:55","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1232","Mavunino Diansongui","Masculino","João Luvumbu","Mafuta Maria","Luanda","Angolana","Luanda","","Luanda","","","","924119791","","","2022","2009-01-05","0000-00-00","612","","","João Luvumbu","2022-09-16 10:09:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1233","Bianca Maria Manuel Disonsi","Femenino","Alberto Macueno Manuel Dinsonsi","Helena Manuel","Cazenga","Angolana","","","Luanda","","","","943816412","","","2022","2012-03-23","0000-00-00","613","","","Alberto Macueno Manuel Dinsonsi","2022-09-16 10:15:49","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1234","Majediyuka Francisca Muleleno Kuvilala","Femenino","Dimitrof Francisco da Silva Kuvilala","Fernanda Yolanda Muleleno","Viana","Angolana","Luanda","","Luanda","","","","924800780","","","2022","2016-11-28","0000-00-00","614","","","Dimitrof Francisco da Silva Kuvilala","2022-09-16 10:59:47","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1235","Janeth Dala Paciencia","Femenino","Miguel Samuel Paciencia","Rosa Cambo Dala","Kilamba Kiaxi","Angolana","Luanda","023901664LA059","Luanda","","","","923444870","","","2022","2006-01-24","2027-07-21","615","","","Miguel Samuel Paciencia","2022-09-16 11:16:43","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1236","Marco Aurélio Cristo Dala","Masculino","Adolfo da Graça Dala","Marinela Glória Cristo Dala","Ingombotas","Angolana","Luanda","020960950LA057","Luanda","","","","922853883","","","2022","2010-03-27","2025-09-15","623","","","Adolfo da Graça Dala","2022-09-19 16:36:25","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1237","Catarina Luanda Matamba","Femenino","António Luis Tete Matamba","Juliana Hebo Luamba Luanda","Viana","Angolana","Luanda","022068072LA058","Luanda","","","","922320229","","","2022","2012-10-18","2026-06-17","625","","","António Luis Tete Matamba","2022-09-19 16:48:15","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1238","Dumilson Luis Luanda Matamba","Masculino","Ant[onio Luis Tate Matamba","Juliana Hebo Luamba Luanda","Viana","Angolana","Luanda","022163549LA050","Luanda","","","","922320229","","","2022","2015-06-30","2026-07-08","626","","","Ant[onio Luis Tate Matamba","2022-09-19 16:52:41","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1239","Olga Jorgina Rodrigues Franco","Femenino","Quilamba Jorge Franco","Laura Rodrigues Jorge","Saurimo","Angolana","","","Luanda","","","","923343834","","","2022","2011-01-07","0000-00-00","627","","","Quilamba Jorge Franco","2022-09-19 16:55:54","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1240","Nataniela Royana José Gaspar","Femenino","Ant[onio Gaspar Joaquim","Rosa Luis José","Viana","Angolana","Luanda","","Luanda","","","","923661920","","","2022","2016-06-18","0000-00-00","630","","","Ant[onio Gaspar Joaquim","2022-09-19 17:44:28","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1241","Emiliana Adalzira José Gaspar","Masculino","António Gaspar Joaquim","Rosa Luis José","Viana","Angolana","Luanda","023283336LA052","Luanda","","","","923661920","","","2022","2015-04-19","2027-03-29","632","","","António Gaspar Joaquim","2022-09-19 17:53:08","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1242","Neymar Moises Correia Nkunga","Masculino","João Nkunga","Carla Eugénia de Vasconcelos Correia","Cazenga","Angolana","Luanda","","Luanda","","","","939016161","","","2022","2011-08-20","0000-00-00","643","","","João Nkunga","2022-09-19 18:41:01","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1243","Fernandes Junior Eduardo","Masculino","Fernando Eduardo","Ana Romão","Luanda","Angolana","Luanda","","Luanda","","","","941271862","","","2022","2015-02-28","0000-00-00","644","","","Fernando Eduardo","2022-09-19 18:43:54","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1244","Laura Gomes Junqueira","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","645","","","","2022-09-19 18:46:14","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1245","Rosa Gomes Junqueira","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","646","","","","2022-09-19 18:47:10","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1246","Suzana Armando Paulo","Femenino","Martins Pulo Gambo","Angela Alberto Cuassa","Uige","Angolana","Uige","","Luanda","","","","925464983","","","2022","2012-01-21","0000-00-00","655","","","Martins Pulo Gambo","2022-09-21 10:30:00","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1247","Madalena Nsika Sinza","Femenino","Pedro Sinza","Afonsina Kuedikuenda","Kuinba","Angolana","Uige","","Luanda","","","","947714672","","","2022","2008-07-19","0000-00-00","657","","","Pedro Sinza","2022-09-21 10:39:02","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1248","Ventura Mucombo José","Masculino","António José Domingos","Domingas Soares Mucombe","Ndalatando-Cacengo","Angolana","Cuanza Norte","","Luanda","","","","923208822","","","2022","2007-02-26","0000-00-00","662","","","António José Domingos","2022-09-22 10:27:25","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1249","Victoria Fernandes José","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","665","","","","2022-09-23 16:42:23","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1250","Paulo Ndombaxi Albano","Masculino","Miguel Albano","Maria Goveia Ndombaxi","Luanda","Angolana","Luanda","","Luanda","","","","921996962","","","2002","2001-02-07","0000-00-00","671","","","Miguel Albano","2002-01-01 01:20:28","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1251","Francisco Famado Jorge","Masculino","Álvaro Manuel","Teresa Famado","Negaje","Angolana","Uige","","Luanda","","","","927285175","","","2002","2003-05-01","0000-00-00","672","","","Álvaro Manuel","2002-01-01 02:55:20","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1252","Luzia António dos Santos","Femenino","Paulo C. do Santos","Nelsa C. António","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","923580788","","","2022","2007-10-13","0000-00-00","676","","","Paulo C. do Santos","2022-09-27 15:29:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1253","Jessica Patrícia da Silva Dias","Femenino","Carlos José Bernardo da Silva","Teresa Manuel Dias","Viana","Angolana","Luanda","4110/2018","Luanda","nao","","926849000","","","","2022","2017-09-27","0000-00-00","678","Spu2","","","2022-09-28 09:12:43","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1254","Naureth de F. Bravo da Rosa","Femenino","Alcides C B.. Da Rosa","Eva Domingos de Carvalho","Luanda","Angolana","Luanda","","Luanda","","","","","","","2022","2009-05-17","0000-00-00","684","","","","2022-09-30 09:38:30","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1255","Paulo Estevão Pedro","Masculino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","689","","","","2022-10-03 09:51:53","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1256","Telmo Fernando David","Masculino","Alexandre T. David","Maria P. Fernando","Luanda","Angolana","Luanda","","Luanda","","","","925584481","","","2022","2018-04-04","0000-00-00","691","","","Alexandre T. David","2022-10-03 11:09:40","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1257","Elisangela Fernando David","Masculino","Alexandre Tomas David","Maria Pedade Henriques","Viana","Angolana","Luanda","","Luanda","","","","925584412","","","2022","2012-08-08","0000-00-00","694","","","Alexandre Tomas David","2022-10-03 11:34:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1258","Henrique Luis Cardoso","Masculino","Fernando da Silva Cardoso","Tania Luis Pedro","Cazenga","Angolana","Luanda","020466568LA059","Luanda","","","","949771795","","","2022","2005-01-12","2025-01-13","695","","","Fernando da Silva Cardoso","2022-10-03 11:41:02","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1259","Luzia Francisco Moxi","Femenino","Serafim Alberto Moxi","Conceição Francisco","Catete","Angolana","Luanda","","Luanda","","","","923235225","","","2022","2026-09-16","0000-00-00","699","","","Serafim Alberto Moxi","2022-10-03 13:43:14","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1260","Sandra Quipapa Lundangem","Masculino","Jacob João Lundange","Delfina António Lundange","Luanda","Angolana","Luanda","","Luanda","","","","924260703","","","2022","2016-06-27","0000-00-00","701","","","Jacob João Lundange","2022-10-03 14:14:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1261","Florinda Catchumbo Constantino","Femenino","Constatino Catomba","Helena Constantino","","Angolana","","","Luanda","","","","931160742","","","2022","2000-04-17","0000-00-00","702","","","Constatino Catomba","2022-10-03 14:19:39","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1262","Paulina João Casimiro","Masculino","Tio Buci Casimiro","Am[elia João Muyeba","Luanda","Angolana","Luanda","","Luanda","","","","","","","2022","2016-06-28","0000-00-00","703","","","Tio Buci Casimiro","2022-10-03 14:40:39","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1263","Avelina Manuela Lucunde","Femenino","Gabriel Kalungo Lucunde","Eduarda Manuela Kanjambala","","Angolana","","","Luanda","","","","927914043","","","2022","2011-06-27","0000-00-00","704","","","Gabriel Kalungo Lucunde","2022-10-03 14:55:50","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1264","Nubercia Eduardo Henriques","Femenino","Nuno Henriques","Belmiro Elizangela","Cuanza Sul","Angolana","","","Luanda","","","","948428515","","","2022","2015-11-09","0000-00-00","705","","","Nuno Henriques","2022-10-03 15:51:20","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1265","Edmilcia João Neto","Femenino","João Neto BViera","Domingas Albino","Malange","Angolana","Malange","","Luanda","","","","948428515","","","2022","2011-03-21","0000-00-00","706","","","João Neto BViera","2022-10-03 15:55:05","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1266","Antonio Fernandes","Masculino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","708","","","","2022-10-03 16:05:20","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1267","Kezia Emanuela Perreira","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","709","","","","2022-10-03 16:45:22","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1268","Larissa Tamara Caquianda Matias","Femenino","Osvaldo Domingos Matias","Joana da Conceição N. Matias","Ingombotas","Angolana","Luanda","009845042LA041","Luanda","","","","924220137","","","2022","2010-05-05","2023-12-05","712","","","Osvaldo Domingos Matias","2022-10-04 11:03:24","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1269","Carla Albertina Baião","Femenino",".............................","Marilena António Baião","Kilamba Kiaxi","Angolana","Luanda","020352392LA056","Luanda","","","","931304102","","","2022","2008-06-15","2024-12-02","713","","",".............................","2022-10-04 12:01:27","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1270","Emanuel Agostinho Vunge Gonga","Masculino","Josée Vunge Gonga","Luisa Lamento V. Gonga","Ingombotas","Angolana","Luanda","","Luanda","","","","923496972","","","2022","2004-04-02","0000-00-00","715","","","Josée Vunge Gonga","2022-10-04 15:14:38","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1271","Marcos Aurelio Dalas","Masculino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","716","","","","2022-10-04 15:17:24","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1272","Claudino Manuel José Fernandes","Masculino","Francisco Fernandes","Teresa Manuel Caetaon José","Rangel","Angolana","Luanda","022628013LA053","Luanda","","","","932138035","","","2022","2003-03-22","2026-10-11","721","","","Francisco Fernandes","2022-10-04 16:22:18","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1273","Mizael Junior  Dimone Panzo","Masculino","Pedro K. Ramiro Panzo","Cristina Mansoni Dimone","Viana","Angolana","Luanda","742/2017","Luanda","","","","","","","2022","0000-00-00","0000-00-00","723","","","","2022-10-05 09:13:20","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1274","Adão Zage Cazuma Pedro","Masculino","Zage Pedro","Cecília Nzango M. Cazuma","Viana","Angolana","Luanda","","Luanda","","","","956541720","","","2022","2006-08-01","0000-00-00","731","","","Zage Pedro","2022-10-10 13:19:42","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1275","Belmira Patricia Manecas Zenza","Masculino","Armindo Abel Zenza","Lademira Patricia Manecas","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","","","","2022","2012-12-22","0000-00-00","732","","","Armindo Abel Zenza","2022-10-10 13:28:49","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1276","Fernando Germano Muati Francisco","Masculino","Germano Manuel João Francisco","Marcelina Joaquim Muati","Cacuaco","Angolana","Luanda","","Luanda","","","","921650617","","","2022","2002-12-21","0000-00-00","733","","","Germano Manuel João Francisco","2022-10-10 13:32:12","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1277","Maria Ashley Geraldo Gonçalves","Femenino","Nilton Edson de Lemos Gonçalves","Teresa Domiana Gonçalves","Ingombotas","Angolana","Luanda","","Luanda","","","","923854866","","","2022","2005-12-22","0000-00-00","736","","","Nilton Edson de Lemos Gonçalves","2022-10-10 15:35:21","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1278","Feliciano Fonseca Kalundungo Joaquim","Masculino","Barreto Fonseca Joaquim","Ermelinda Fineza A. Kalundungo","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","","","","2022","2015-06-27","0000-00-00","743","","","Barreto Fonseca Joaquim","2022-10-10 17:07:18","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1279","Andreia Segundo Lopes","Femenino","","","","Angolana","","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","745","","","","2022-10-11 16:51:06","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1280","Etelvina Madalena Santana Vicente","Femenino","Oseias Vicente","Ermelinda Santana","Luanda","Angolana","","","Luanda","","","","921519027","","","2022","2009-03-04","0000-00-00","746","","","Oseias Vicente","2022-10-12 10:21:08","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1281","Auria da Silva da Gama","Femenino","Clemente Bartolomeu da Gama","Madalena ERmuno da Silva","Viana","Angolana","Luanda","","Luanda","","","","934224906","","","2022","2013-05-18","0000-00-00","748","","","Clemente Bartolomeu da Gama","2022-10-12 13:20:04","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1282","Agnaldo Rock Tchinhama","Masculino","Domingos Roque","Dulce Alexandre","Viana","Angolana","Luanda","","Luanda","","","","","","","2022","2008-08-09","0000-00-00","749","","","Domingos Roque","2022-10-13 09:02:35","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1283","Santos Domingos  dos Santos Toco","Masculino","Santos Miguel Toco","Rosa André Domingos","Cazenga","Angolana","Luanda","","Luanda","","","","940842743","","","2022","2006-06-12","0000-00-00","750","","","Santos Miguel Toco","2022-10-13 10:40:59","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1284","Paulo Tomas Mariano","Masculino","Idácio Cordeiro Mariano","Hermengarda Jurema J. Mariano","Kilamba Kiaxi","Angolana","Luanda","","Luanda","","","","938419373","","","2022","2012-05-14","0000-00-00","754","","","Idácio Cordeiro Mariano","2022-10-17 09:03:56","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1285","Israel Filho Tomas Mariano","Masculino","Idácio Cordeiro Mariano","Hermengarda Jurema J. José","","Angolana","","","Luanda","","","","938419373","","","2022","2014-03-14","0000-00-00","755","","","Idácio Cordeiro Mariano","2022-10-17 09:08:03","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1286","Antonica Castelo Bengue","Masculino","Tomás Bengui","Luisa António","Samba","Angolana","Luanda","","Luanda","","","","938388469","","","2022","2016-06-11","0000-00-00","761","","","Tomás Bengui","2022-10-20 15:37:26","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1287","Dionisio Castelo Bengui","Masculino","Tomás Bengui","Luisa António","Samba","Angolana","Luanda","","Luanda","","","","938388469","","","2022","2013-09-09","0000-00-00","762","","","Tomás Bengui","2022-10-20 15:43:42","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1288","Marcelo Melinda dos Santos","Masculino","Novais José dos Santos","Jorgina Tchisseque Melinda","Maianga","Angolana","Luanda","009104249LA048","Luanda","","","","","","","2022","0000-00-00","0000-00-00","763","","","Novais José dos Santos","2022-10-20 16:07:46","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1289","Bonifácio Caterça Ferreira Adão","Masculino","Eugénio Caterça Ferreira","Maria Adão Francisco Saveia","Samba","Angolana","Luanda","022439634KN053","Luanda","","","","954379920","","","2022","2003-12-11","0000-00-00","764","","","Eugénio Caterça Ferreira","2022-10-20 16:13:28","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1290","David Benjamim Chiengo","Masculino","Benjamim M. Chiengo","Marisa da Silva","Viana","Angolana","","007176458LA044","Luanda","","","","928162797","","","2022","2002-01-16","2026-01-11","772","","","Benjamim M. Chiengo","2022-11-14 19:53:47","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1291","Sandro Chipilica Muhongo","Masculino","Angelino Silva J. Muhongo","Rosalina Alice Chipilica","Viana","Angolana","","021700278LA053","Luanda","","","","922325477","","","2022","2007-10-11","0000-00-00","773","","","Angelino Silva J. Muhongo","2022-11-14 19:57:34","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1292","Elizangelo Domingos Francisco","Masculino","Geovane Afonso Francisco","Carmem Sheila Francisco","Luanda","Angolana","","","Luanda","","","","929158614","","","2022","2015-04-03","0000-00-00","774","","","Geovane Afonso Francisco","2022-11-14 21:28:00","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1293","Felizarda Fernandes José","Masculino","Santos Albano Jose","Teresa Fernando José","","Angolana","","","Luanda","","","","933026880","","","2022","0000-00-00","0000-00-00","777","","","Santos Albano Jose","2022-11-21 15:52:25","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1294","André Fernando José António","Masculino","Santos Albano Jose","Teresa Fernandes José","","Angolana","","","Luanda","","","","924109194","","","2022","2018-04-04","0000-00-00","778","","","Santos Albano Jose","2022-11-21 15:54:23","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1295","Maria Manza Pembele","Femenino","Kimbuamba Nestor","Arrieta Pembele","Cazenga","Angolana","Luanda","","Luanda","","","","","","","2022","0000-00-00","0000-00-00","779","","","Kimbuan","2022-11-23 09:11:51","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1296","Mateus Nzuzi António","Masculino","Viriato Paulina António","Delfina Eduardo Nzunzi","Samba","Angolana","Luanda","022432779LA051","Luanda","","","","","","","2022","2005-08-10","2026-09-01","781","","","Viriato Paulina António","2022-12-15 06:08:44","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1297","Feliciana Baptista António","Femenino","","","","Angolana","","","Luanda","","","","923320458/913252240","","","2022","0000-00-00","0000-00-00","782","","","","2022-12-15 06:11:12","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1298","Rosa Enfica Francisco Joaquim","Femenino","Lino Joaquim","Delmira Francisco Albino","Gabela","Angolana","Cuanza Sul","021931787KS050","Luanda","","","","925295157","","","2022","2003-01-06","2026-05-18","784","","","Lino Joaquim","2022-12-28 08:58:19","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1299","António Fernando","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","0000-00-00","0000-00-00","785","","","","2023-01-05 14:01:46","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1300","Adriana Luana António","Femenino","...................................","Celma Marisa Major António","Luanda","Angolana","Luanda","","Luanda","","","","929042918/944783291","","","2023","2012-12-30","0000-00-00","786","","","...................................","2023-01-06 08:02:06","activo","","2023-08-19 20:03:55","64e1121b9ffc9.png","","","");
INSERT INTO alunos VALUES("1301","Inácio Mussungo Zua","Masculino","Cristovão Calombe Jungo Zua","Deolinda Clemente Mussungo Zua","Viana","Angolana","Luanda","022324445LA059","Luanda","","","","923329373","","","2023","2013-06-24","2026-09-10","787","","","Cristovão Calombe Jungo Zua","2023-01-06 08:07:03","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1302","Madalena Clemente Zua","Femenino","Géneses Salomão Zua","Suzana Clemente Mussungo","","Angolana","","","Luanda","","","","923329373","","","2023","2013-01-26","0000-00-00","791","","","Géneses Salomão Zua","2023-01-19 09:46:40","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1303","Eva Diolinda Mussungo Zua","Femenino","Cristóvão Calombi Jungo Zua","Diolinda Clemente Mussungo Zua","Viana","Angolana","","022276307LA057","Luanda","","","","923329373","","","2023","2011-07-06","0000-00-00","792","","","Cristóvão Calombi Jungo Zua","2023-01-19 09:54:14","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1304","Airosana Mariana Garcia Aires","Femenino","Gonsalo Gaspar Marcos Aires","Inês Cabuço Garcia","Cazenga","Angolana","Luanda","020392295LA056","Luanda","","","","","","","2023","2013-06-09","2024-12-15","793","","","Gonsalo Gaspar Marcos Aires","2023-01-26 08:59:24","activo","","2023-11-05 16:17:26","6547c016ccba6.jpg","","","");
INSERT INTO alunos VALUES("1305","Yelciana Feliciana Garcia Aires","Femenino","Gonsalo Gaspar Marcos Aires","Inês Cabuço Garcia","Cazenga","Angolana","Luanda","020392397LA051","Luanda","","","","","","","2023","2023-06-09","2024-12-15","794","","","Gonsalo Gaspar Marcos Aires","2023-01-26 09:01:49","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1306","Hélio Mateus Chico Pedro","Masculino","Tito Mateus Pedro","","","Angolana","","","Luanda","","","","","","","2023","0000-00-00","0000-00-00","795","","","Tito Mateus Pedro","2023-01-26 09:13:25","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1307","Simone Catarina A. Cassua","Femenino","Emanuel J. Cassua","Catarina D. Agostinho","","Angolana","","","Luanda","","","","","","","2023","2021-08-19","0000-00-00","796","","","Emanuel J. Cassua","2023-01-26 09:39:25","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1308","Fernanda Kaynara Falú da Silva","Femenino","Kevan Mário da silva","JeovannaMarias Falú","","Angolana","Luanda","","Luanda","","","","","","","2023","0000-00-00","0000-00-00","797","","","Kevan Mário da silva","2023-01-30 12:49:48","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1309","Evaristo Cabamba Tama Vital","Masculino","Jeremias Vital","Berenice Vital","Luanda","Angolana","Luanda","","Luanda","","","","923452910/945728085","","","2023","2011-02-14","0000-00-00","798","","","Jeremias Vital","2023-02-06 08:45:32","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1310","Gaspar Francisco Josias","Masculino","Luciano Josias","Esperança João Francisco","Maianga","Angolana","Luanda","","Luanda","","","","923409941","","","2023","2004-08-30","0000-00-00","801","","","Luciano Josias","2023-02-08 14:51:08","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1311","Leo João Domingos","Masculino","João Domingos José","Neusa S. Mateus","Luanda","Angolana","Luanda","","Luanda","","","","948900928","","","2023","0000-00-00","0000-00-00","802","","","João Domingos José","2023-02-08 14:56:56","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1312","Pedro Diogo dos Santos","Masculino","António Francisco dos Santos","Marinela Francisco","Sambinzanga","Angolana","Luanda","024575046LA053","Luanda","","","","931612066","","","2002","2004-11-12","0000-00-00","803","","","António Francisco dos Santos","2002-01-03 02:45:03","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1313","mareus Andre","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","0000-00-00","0000-00-00","804","","","","2023-07-25 13:23:18","activo","","2023-08-12 19:50:47","","","","");
INSERT INTO alunos VALUES("1314","Marinela Francisco Tomás","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","","","805","","","","2023-09-20 23:36:03","activo","","2023-09-20 23:36:03","","","","");
INSERT INTO alunos VALUES("1315","Fernadndo","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","","","806","","","","2023-10-10 10:16:46","activo","","2023-10-10 10:16:46","","","","");
INSERT INTO alunos VALUES("1316","Doriana Sambumba","Femenino","","","","Angolana","","","Luanda","","","","","","","2023","0000-00-00","0000-00-00","807","","","","2023-10-16 04:46:04","activo","","2023-11-05 16:19:08","6547c07cf2642.jpg","5003032666","","");
INSERT INTO alunos VALUES("1317","Pedro","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","","","808","","","","2023-10-16 04:57:14","activo","","2023-10-16 04:57:15","","","","");
INSERT INTO alunos VALUES("1318","Rinial Pedro","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","2020-02-07","0000-00-00","809","","","","2023-10-16 05:13:58","activo","","2023-11-19 06:32:33","","","95349934","92342323");
INSERT INTO alunos VALUES("1319","Marinela Francisco Tomás n","Masculino","","","","Angolana","","","Luanda","","Laurista","","","","","2023","0000-00-00","0000-00-00","810","","","","2023-11-06 06:52:02","activo","","2023-11-06 06:56:26","","700000","","");
INSERT INTO alunos VALUES("1320","Bernardo Tomas André Teca","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","","","811","","","","2023-11-17 03:02:30","activo","","2023-11-17 03:02:31","","","","");
INSERT INTO alunos VALUES("1321","Futila Francisco Tomás","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","2022-11-05","0000-00-00","812","","","","2023-11-17 03:41:39","activo","","2023-11-17 13:02:54","","","","");
INSERT INTO alunos VALUES("1322","Esmael Calunga Ruto","Masculino","","","","Angolana","","","Luanda","","","","","","","2023","","","813","","","","2023-11-17 03:51:13","activo","","2023-11-17 03:51:13","","","","");
INSERT INTO alunos VALUES("1323","Esmael As","Masculino","","","","Angolana","","","Luanda","","","","","","","2024","","","814","","","","2024-01-15 11:13:14","activo","","2024-01-15 11:13:14","","","","");



DROP TABLE IF EXISTS anoslectivos;

CREATE TABLE `anoslectivos` (
  `idanolectivo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `vigor` varchar(4) NOT NULL DEFAULT 'Não',
  `posicao` int(3) NOT NULL DEFAULT 0,
  `precodafalta` double NOT NULL DEFAULT 0,
  `precodareconfirmacao` double NOT NULL DEFAULT 0,
  `datainicio` date NOT NULL DEFAULT '2021-08-01',
  `datafim` date NOT NULL DEFAULT '2022-06-01',
  `diadamulta` int(2) NOT NULL DEFAULT 15,
  `precodamulta` varchar(50) NOT NULL DEFAULT '0',
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diasparamultaincremental` double DEFAULT 0,
  `valordamultaincremental` double DEFAULT 0,
  PRIMARY KEY (`idanolectivo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO anoslectivos VALUES("1","2020","Não","1","0","0","2020-02-01","2020-11-01","15","0","2023-08-12 19:50:48","0","0");
INSERT INTO anoslectivos VALUES("2","2021/2022","Não","2","500","3000","2021-08-01","2022-06-01","15","2300","2023-08-12 19:50:48","0","0");
INSERT INTO anoslectivos VALUES("3","2019","Não","0","0","0","2021-08-01","2022-06-01","15","0","2023-08-12 19:50:48","0","0");
INSERT INTO anoslectivos VALUES("4","2022/2023","Sim","0","100","0","2022-09-01","2023-06-30","15","20%","2023-10-16 06:40:12","0","0");



DROP TABLE IF EXISTS atl;

CREATE TABLE `atl` (
  `idatl` int(11) NOT NULL AUTO_INCREMENT,
  `idanolectivo` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text DEFAULT NULL,
  `propina` double NOT NULL DEFAULT 0,
  `matricula` double NOT NULL DEFAULT 0,
  `idcoordenador` int(11) NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idatl`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO atl VALUES("1","4","Turma da Marta","","5600","4000","0","2023-11-26 13:29:36");



DROP TABLE IF EXISTS avaliacoes;

CREATE TABLE `avaliacoes` (
  `idavaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `iddisciplina` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL DEFAULT 'Avaliação Contínua',
  `data` date NOT NULL,
  `idtrimestre` int(11) NOT NULL,
  `notavinculada` int(11) NOT NULL DEFAULT 0,
  `idturma` int(11) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idavaliacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO avaliacoes VALUES("1","6","Avaliação","2022-10-19","11","26","32","2023-08-12 19:50:50");
INSERT INTO avaliacoes VALUES("2","11","Avaliação Continua","2022-10-27","11","26","30","2023-08-12 19:50:50");



DROP TABLE IF EXISTS avaliacoesdosalunos;

CREATE TABLE `avaliacoesdosalunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `idaluno` int(11) NOT NULL,
  `idavaliacao` int(11) NOT NULL,
  `resposta` varchar(22) NOT NULL DEFAULT 'Sim',
  `observacao` text NOT NULL,
  `datadaavaliacao` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO avaliacoesdosalunos VALUES("61","830","1174","3","Sim","muito bom","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("62","830","1174","10","Não","muito bom","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("63","830","1174","9","Sim","muito bom","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("64","830","1174","4","Não","muito bom","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("65","830","1174","12","Talvez","muito bom","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("66","828","1321","3","Sim","oioi","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("67","828","1321","1","Não","oioi","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("68","828","1321","4","Não","oioi","2023-12-25");
INSERT INTO avaliacoesdosalunos VALUES("69","828","1321","1","Sim","esva indo quase","2023-11-07");
INSERT INTO avaliacoesdosalunos VALUES("70","828","1321","12","Não","esva indo quase","2023-11-07");
INSERT INTO avaliacoesdosalunos VALUES("71","828","1321","6","Não","esva indo quase","2023-11-07");
INSERT INTO avaliacoesdosalunos VALUES("72","828","1321","8","Sim","esva indo quase","2023-11-07");
INSERT INTO avaliacoesdosalunos VALUES("73","828","1321","4","Não","esva indo quase","2023-11-07");



DROP TABLE IF EXISTS cadeirasdeixadas;

CREATE TABLE `cadeirasdeixadas` (
  `idcadeiradeixada` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `iddisciplina` int(11) NOT NULL,
  `valordanota` double NOT NULL DEFAULT 0,
  `data` date DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcadeiradeixada`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO cadeirasdeixadas VALUES("23","1104","98","13","3","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("24","1063","170","13","3","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("25","1137","329","13","2","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("26","1195","512","13","0","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("27","1202","533","13","4","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("28","1208","548","13","0","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("29","1219","586","13","0","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("30","1251","685","13","3","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("31","121","695","13","3","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("32","1283","764","13","3","2022-12-08","2023-08-12 19:50:51");
INSERT INTO cadeirasdeixadas VALUES("33","194","780","13","1","2022-12-08","2023-08-12 19:50:51");



DROP TABLE IF EXISTS categoriasdeavaliacao;

CREATE TABLE `categoriasdeavaliacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(222) NOT NULL,
  `idsessaodeavaliacao` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO categoriasdeavaliacao VALUES("1","Motora","2");
INSERT INTO categoriasdeavaliacao VALUES("2","Domínio da Oralidade","2");
INSERT INTO categoriasdeavaliacao VALUES("3","Creatividade","1");



DROP TABLE IF EXISTS ciclos;

CREATE TABLE `ciclos` (
  `idciclo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(222) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idciclo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO ciclos VALUES("1","Jardim de Infância","2023-12-25 12:52:51");
INSERT INTO ciclos VALUES("2","1º Ciclo","2023-08-12 19:50:52");



DROP TABLE IF EXISTS compra;

CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) DEFAULT NULL,
  `idaluno` int(11) DEFAULT NULL,
  `idanolectivo` int(11) NOT NULL DEFAULT 2,
  `iddacompra` int(11) DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `estatus` varchar(30) NOT NULL DEFAULT 'vendido',
  `preco` double NOT NULL DEFAULT 0,
  `quantidade` double NOT NULL DEFAULT 0,
  `entregue` int(11) NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcompra`),
  KEY `idproduto` (`idproduto`),
  KEY `idcliente` (`idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

INSERT INTO compra VALUES("1","2","1268","0","1","2023-10-16 05:54:04","vendido","6000","1","0","6000","0","2023-10-16 05:54:04");
INSERT INTO compra VALUES("2","1","1268","0","1","2023-10-16 05:54:05","vendido","7000","1","0","7000","0","2023-10-16 05:54:05");
INSERT INTO compra VALUES("3","2","1282","0","2","2023-12-25 14:58:51","vendido","6000","1","0","6000","0","2023-12-25 14:58:51");
INSERT INTO compra VALUES("4","3","1282","0","2","2023-12-25 14:58:51","vendido","6000","1","0","6000","0","2023-12-25 14:58:51");
INSERT INTO compra VALUES("5","2","1300","4","3","2024-01-15 11:20:56","vendido","6000","4","4","24000","0","2024-01-15 11:20:56");



DROP TABLE IF EXISTS compras;

CREATE TABLE `compras` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) DEFAULT NULL,
  `obs` varchar(100) DEFAULT '',
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `idfuncionario` int(11) NOT NULL,
  `idatendimento` int(11) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcompra`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

INSERT INTO compras VALUES("1","1268","","2023-10-16 05:54:04","31","0","2023-11-06 06:45:26");
INSERT INTO compras VALUES("2","1282","","2023-12-25 14:58:51","31","0","2023-12-25 14:58:52");
INSERT INTO compras VALUES("3","1300","","2024-01-15 11:20:56","31","832","2024-01-15 11:20:56");



DROP TABLE IF EXISTS dadosdaempresa;

CREATE TABLE `dadosdaempresa` (
  `iddadosdaempresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) DEFAULT NULL,
  `servicos` text DEFAULT NULL,
  `numerodecontribuinte` varchar(120) DEFAULT NULL,
  `contabancaria` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `localizacao` text DEFAULT NULL,
  `telefone` text DEFAULT NULL,
  `site` varchar(100) NOT NULL,
  `localizacaoprecisa` varchar(220) DEFAULT NULL,
  `nomedodireitor` varchar(200) NOT NULL DEFAULT 'Esmael Calunga',
  `caminhodologo` varchar(222) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`iddadosdaempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO dadosdaempresa VALUES("1","Complexo Escolar Arena do Saber","Ensino Primário, Iº e IIº Ciclo e Ensino Secundário","","BIC: 0051.0000.0591.9169.1014.2","","Viana - Luanda, Angola","923848537","","Bairro Jacinto Tchipa, Ciquentinha, Por detrás das roloutes","Augusto Tuta Nguvo","6596a71141b6a.jpeg","2024-01-04 12:39:45");



DROP TABLE IF EXISTS descadastrados;

CREATE TABLE `descadastrados` (
  `iddescadastrado` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL DEFAULT 'Inactivo',
  `descricao` text DEFAULT NULL,
  `data` date NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`iddescadastrado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO descadastrados VALUES("1","1300","832","Trancou o Ano","","2023-12-25","2023-12-25 12:54:43");



DROP TABLE IF EXISTS documentostratados;

CREATE TABLE `documentostratados` (
  `iddocumentotratado` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL DEFAULT 2,
  `tipodedocumento` varchar(50) NOT NULL DEFAULT 'Declaração Sem Notas',
  `preco` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `datadeentrada` date NOT NULL,
  `datadolevantamento` date NOT NULL,
  `jalevantado` varchar(10) NOT NULL DEFAULT 'Não',
  `escoladedestino` varchar(220) DEFAULT NULL,
  `idtrimestre` int(11) DEFAULT NULL,
  `ensino` varchar(40) DEFAULT NULL,
  `classeum` int(11) DEFAULT NULL,
  `classedois` int(11) DEFAULT NULL,
  `classetres` int(11) DEFAULT NULL,
  `classequatro` int(11) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`iddocumentotratado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS ementamensal;

CREATE TABLE `ementamensal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` date NOT NULL,
  `tipoderefeicao` varchar(222) NOT NULL,
  `descricaodarefeicao` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO ementamensal VALUES("1","2023-12-01","Pequeno Almoço","Bombo");
INSERT INTO ementamensal VALUES("2","2023-12-01","Almoço","");
INSERT INTO ementamensal VALUES("3","2023-12-01","Lanche","Repolho");
INSERT INTO ementamensal VALUES("4","2023-12-02","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("5","2023-12-02","Almoço","pincho");
INSERT INTO ementamensal VALUES("6","2023-12-02","Lanche","");
INSERT INTO ementamensal VALUES("7","2023-12-03","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("8","2023-12-03","Almoço","");
INSERT INTO ementamensal VALUES("9","2023-12-03","Lanche","");
INSERT INTO ementamensal VALUES("10","2023-12-04","Pequeno Almoço","Pão");
INSERT INTO ementamensal VALUES("11","2023-12-04","Almoço","");
INSERT INTO ementamensal VALUES("12","2023-12-04","Lanche","Massa de pao");
INSERT INTO ementamensal VALUES("13","2023-12-05","Pequeno Almoço","Abacate");
INSERT INTO ementamensal VALUES("14","2023-12-05","Almoço","");
INSERT INTO ementamensal VALUES("15","2023-12-05","Lanche","");
INSERT INTO ementamensal VALUES("16","2023-12-06","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("17","2023-12-06","Almoço","Arroz doce");
INSERT INTO ementamensal VALUES("18","2023-12-06","Lanche","");
INSERT INTO ementamensal VALUES("19","2023-12-07","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("20","2023-12-07","Almoço","");
INSERT INTO ementamensal VALUES("21","2023-12-07","Lanche","");
INSERT INTO ementamensal VALUES("22","2023-12-08","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("23","2023-12-08","Almoço","");
INSERT INTO ementamensal VALUES("24","2023-12-08","Lanche","");
INSERT INTO ementamensal VALUES("25","2023-12-09","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("26","2023-12-09","Almoço","");
INSERT INTO ementamensal VALUES("27","2023-12-09","Lanche","");
INSERT INTO ementamensal VALUES("28","2023-12-10","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("29","2023-12-10","Almoço","");
INSERT INTO ementamensal VALUES("30","2023-12-10","Lanche","");
INSERT INTO ementamensal VALUES("31","2023-12-11","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("32","2023-12-11","Almoço","");
INSERT INTO ementamensal VALUES("33","2023-12-11","Lanche","");
INSERT INTO ementamensal VALUES("34","2023-12-12","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("35","2023-12-12","Almoço","Peixe Frito");
INSERT INTO ementamensal VALUES("36","2023-12-12","Lanche","");
INSERT INTO ementamensal VALUES("37","2023-12-13","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("38","2023-12-13","Almoço","");
INSERT INTO ementamensal VALUES("39","2023-12-13","Lanche","");
INSERT INTO ementamensal VALUES("40","2023-12-14","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("41","2023-12-14","Almoço","Banana Assada");
INSERT INTO ementamensal VALUES("42","2023-12-14","Lanche","");
INSERT INTO ementamensal VALUES("43","2023-12-15","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("44","2023-12-15","Almoço","");
INSERT INTO ementamensal VALUES("45","2023-12-15","Lanche","");
INSERT INTO ementamensal VALUES("46","2023-12-16","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("47","2023-12-16","Almoço","");
INSERT INTO ementamensal VALUES("48","2023-12-16","Lanche","");
INSERT INTO ementamensal VALUES("49","2023-12-17","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("50","2023-12-17","Almoço","");
INSERT INTO ementamensal VALUES("51","2023-12-17","Lanche","");
INSERT INTO ementamensal VALUES("52","2023-12-18","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("53","2023-12-18","Almoço","");
INSERT INTO ementamensal VALUES("54","2023-12-18","Lanche","Pedra");
INSERT INTO ementamensal VALUES("55","2023-12-19","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("56","2023-12-19","Almoço","");
INSERT INTO ementamensal VALUES("57","2023-12-19","Lanche","");
INSERT INTO ementamensal VALUES("58","2023-12-20","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("59","2023-12-20","Almoço","");
INSERT INTO ementamensal VALUES("60","2023-12-20","Lanche","");
INSERT INTO ementamensal VALUES("61","2023-12-21","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("62","2023-12-21","Almoço","");
INSERT INTO ementamensal VALUES("63","2023-12-21","Lanche","");
INSERT INTO ementamensal VALUES("64","2023-12-22","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("65","2023-12-22","Almoço","");
INSERT INTO ementamensal VALUES("66","2023-12-22","Lanche","");
INSERT INTO ementamensal VALUES("67","2023-12-23","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("68","2023-12-23","Almoço","");
INSERT INTO ementamensal VALUES("69","2023-12-23","Lanche","");
INSERT INTO ementamensal VALUES("70","2023-12-24","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("71","2023-12-24","Almoço","");
INSERT INTO ementamensal VALUES("72","2023-12-24","Lanche","");
INSERT INTO ementamensal VALUES("73","2023-12-25","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("74","2023-12-25","Almoço","Yogurte");
INSERT INTO ementamensal VALUES("75","2023-12-25","Lanche","");
INSERT INTO ementamensal VALUES("76","2023-12-26","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("77","2023-12-26","Almoço","");
INSERT INTO ementamensal VALUES("78","2023-12-26","Lanche","");
INSERT INTO ementamensal VALUES("79","2023-12-27","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("80","2023-12-27","Almoço","");
INSERT INTO ementamensal VALUES("81","2023-12-27","Lanche","");
INSERT INTO ementamensal VALUES("82","2023-12-28","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("83","2023-12-28","Almoço","");
INSERT INTO ementamensal VALUES("84","2023-12-28","Lanche","");
INSERT INTO ementamensal VALUES("85","2023-12-29","Pequeno Almoço","pao");
INSERT INTO ementamensal VALUES("86","2023-12-29","Almoço","");
INSERT INTO ementamensal VALUES("87","2023-12-29","Lanche","Maça de Abobora");
INSERT INTO ementamensal VALUES("88","2023-12-30","Pequeno Almoço","bolacha");
INSERT INTO ementamensal VALUES("89","2023-12-30","Almoço","");
INSERT INTO ementamensal VALUES("90","2023-12-30","Lanche","Leite");
INSERT INTO ementamensal VALUES("91","2023-12-31","Pequeno Almoço","");
INSERT INTO ementamensal VALUES("92","2023-12-31","Almoço","");
INSERT INTO ementamensal VALUES("93","2023-12-31","Lanche","");



DROP TABLE IF EXISTS entradas;

CREATE TABLE `entradas` (
  `identrada` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `idtipo` int(11) DEFAULT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `divida` double NOT NULL DEFAULT 0,
  `formadepagamento` varchar(200) NOT NULL DEFAULT 'Dinheiro',
  `idaluno` int(11) DEFAULT NULL,
  `idturma` int(11) DEFAULT NULL,
  `datadaentrada` timestamp NOT NULL DEFAULT current_timestamp(),
  `idanolectivo` int(11) DEFAULT NULL,
  `rupe` varchar(222) DEFAULT '',
  `expiracaodorupe` date DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identrada`)
) ENGINE=InnoDB AUTO_INCREMENT=7300 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO entradas VALUES("7242","31","Registro de Rematrícula","Rematrícula","818","4000","0","Dinheiro","1304","22","2023-07-24 00:00:00","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7243","31","Registro de Matrícula","Matrícula","819","4000","0","Dinheiro","1313","18","2023-07-25 00:00:00","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7244","31","Registro de Propina de 04/2023 (Ref: 79979 )","Propina","1","5500","0","Dinheiro","1304","22","2023-07-27 10:13:23","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7245","31","Controlo","Outras","0","0","0","","0","0","2023-04-01 00:00:00","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7246","31","Registro de Propina de 05/2023 (Ref: 76876 )","Propina","2","5500","0","Dinheiro","1304","22","2023-07-27 10:14:01","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7247","31","Controlo","Outras","0","0","0","","0","0","2023-05-01 00:00:00","4","","","2023-08-12 19:51:01");
INSERT INTO entradas VALUES("7248","31","Registro de Matrícula","Matrícula","820","4500","0","Dinheiro","1314","11","2023-09-21 00:00:00","4","","","2023-09-20 23:36:10");
INSERT INTO entradas VALUES("7249","31","Registro de Propina de 06/2023 (Ref:  )","Propina","3","6050","0","Dinheiro","1304","22","2023-10-09 03:34:11","4","","","2023-10-09 03:34:11");
INSERT INTO entradas VALUES("7250","31","Controlo","Outras","0","0","0","","0","","2023-06-01 00:00:00","4","","","2023-10-09 03:34:11");
INSERT INTO entradas VALUES("7251","31","Registro de Propina de 10/2023 (Ref:  )","Propina","4","6500","150","Dinheiro","1313","18","2023-10-09 03:34:40","4","","","2023-10-09 03:34:40");
INSERT INTO entradas VALUES("7252","31","Registro de Propina de 07/2023 (Ref:  )","Propina","5","6050","0","Dinheiro","1304","22","2023-10-09 15:02:35","4","","","2023-10-09 15:02:35");
INSERT INTO entradas VALUES("7253","31","Registro de Propina de 08/2023 (Ref:  )","Propina","6","6050","0","Dinheiro","1304","22","2023-10-09 15:02:39","4","","","2023-10-09 15:02:39");
INSERT INTO entradas VALUES("7254","31","Controlo","Outras","0","0","0","","0","","2023-08-01 00:00:00","4","","","2023-10-09 15:02:40");
INSERT INTO entradas VALUES("7255","31","Registro de Propina de 09/2023 (Ref:  )","Propina","7","6050","0","Dinheiro","1304","22","2023-10-09 15:02:44","4","","","2023-10-09 15:02:44");
INSERT INTO entradas VALUES("7256","31","Registro de Propina de 08/2023 (Ref:  )","Propina","8","4500","0","Dinheiro","1314","11","2023-10-10 10:16:00","4","","","2023-10-10 10:16:00");
INSERT INTO entradas VALUES("7257","31","Registro de Matrícula","Matrícula","821","10000","0","Dinheiro","1315","33","2023-10-10 00:00:00","2","","","2023-10-10 10:17:46");
INSERT INTO entradas VALUES("7259","31","Registro de Confirmação","Confirmação","824","2000","0","Dinheiro","1317","19","2023-10-16 00:00:00","4","","","2023-10-16 05:03:22");
INSERT INTO entradas VALUES("7260","31","Registro de Matrícula","Matrícula","825","4000","0","Dinheiro","1318","24","2023-10-16 00:00:00","4","","","2023-10-16 05:14:03");
INSERT INTO entradas VALUES("7261","31","Registro de Matrícula","Matrícula","826","4000","0","Dinheiro","1318","21","2023-10-16 00:00:00","4","","","2023-10-16 05:18:42");
INSERT INTO entradas VALUES("7262","31","Venda de 1  Calção, 1 Uniforme Polo","Material Escolar","1","13000","0","Dinheiro","1268","0","2023-10-16 05:54:06","0","","","2023-10-16 05:54:06");
INSERT INTO entradas VALUES("7263","31","Registro de Matrícula","Matrícula","827","4000","0","Dinheiro","1319","25","2023-11-06 00:00:00","4","","","2023-11-06 06:52:07");
INSERT INTO entradas VALUES("7264","31","Registro de Matrícula","Matrícula","828","0","4000","Dinheiro","1321","24","2023-11-17 00:00:00","4","56546757587","0000-00-00","2023-11-17 03:41:59");
INSERT INTO entradas VALUES("7265","31","Registro de Matrícula","Matrícula","829","4000","0","Dinheiro","1321","21","2023-11-17 00:00:00","4","5565975679","2023-12-17","2023-11-17 03:43:37");
INSERT INTO entradas VALUES("7266","31","Registro de Confirmação","Confirmação","830","2000","0","Dinheiro","1174","19","2023-11-17 00:00:00","4","6316343144","2023-12-19","2023-11-17 03:49:08");
INSERT INTO entradas VALUES("7268","31","Registro de Matrículo no ATL","Matrícula ATL","1","4000","0","Dinheiro","1274","0","2023-11-26 00:00:00","4","","","2023-11-26 15:46:17");
INSERT INTO entradas VALUES("7269","31","Registro de Matrículo nas actividades Extras Curriculares","Matrícula Actividade extras curriculares","1","4900","0","Dinheiro","1274","0","2023-12-08 00:00:00","4","","","2023-12-08 12:37:39");
INSERT INTO entradas VALUES("7270","31","Registro de Matrículo nas actividades Extras Curriculares","Matrícula Actividade extras curriculares","2","0","0","Dinheiro","1274","0","2023-12-08 00:00:00","4","","","2023-12-08 15:12:20");
INSERT INTO entradas VALUES("7271","31","Registro de Propina das Actividades Extras Curriculares de 09/2023 (Ref:  )","Propina das Actividades Extras Curriculares","1","17000","0","Dinheiro","1274","0","2023-12-08 13:26:13","4","","","2023-12-08 13:26:13");
INSERT INTO entradas VALUES("7272","31","Registro de Propina das Actividades Extras Curriculares de 10/2023 (Ref:  )","Propina das Actividades Extras Curriculares","2","14400","0","Dinheiro","1274","0","2023-12-08 13:27:04","4","","","2023-12-08 13:27:04");
INSERT INTO entradas VALUES("7273","31","Registro de Propina das Actividades Extras Curriculares de 07/2023 (Ref:  )","Propina das Actividades Extras Curriculares","3","5500","0","Dinheiro","1274","0","2023-12-08 13:30:46","4","","","2023-12-08 13:30:46");
INSERT INTO entradas VALUES("7275","31","pagamento da matriucla","Matrícula Actividade extras curriculares","2","4500","10500","BIC","1274","0","2023-12-08 15:12:20","4","","","2023-12-08 15:12:20");
INSERT INTO entradas VALUES("7276","31","Registro de Rematrícula","Rematrícula","832","4000","0","Dinheiro","1300","25","2023-12-11 00:00:00","4","","","2023-12-11 13:24:27");
INSERT INTO entradas VALUES("7277","31","Registro de Matrículo no ATL","Matrícula ATL","2","4000","0","Dinheiro","1199","0","2023-12-25 00:00:00","4","","","2023-12-25 14:57:35");
INSERT INTO entradas VALUES("7278","31","Venda de 1  Calção, 1 Saia","Material Escolar","2","12000","0","Dinheiro","1282","0","2023-12-25 14:58:52","0","","","2023-12-25 14:58:52");
INSERT INTO entradas VALUES("7279","31","Registro de Propina das Actividades Extras Curriculares de 11/2023 (Ref:  )","Propina das Actividades Extras Curriculares","4","14400","0","Dinheiro","1274","0","2023-12-25 15:02:42","4","","","2023-12-25 15:02:42");
INSERT INTO entradas VALUES("7280","31","Registro de Matrículo nas actividades Extras Curriculares","Matrícula Actividade extras curriculares","3","0","5000","Dinheiro","1282","0","2024-01-12 00:00:00","4","","","2024-01-12 17:08:12");
INSERT INTO entradas VALUES("7293","31","Registro de Propina de 01/2022 (Ref:  )","Propina","9","5500","0","Dinheiro","1300","25","2024-01-15 11:12:56","4","","","2024-01-15 11:12:56");
INSERT INTO entradas VALUES("7294","31","Controlo","Outras","0","0","0","","0","","2022-01-01 00:00:00","4","","","2024-01-15 11:12:57");
INSERT INTO entradas VALUES("7295","31","Registro de Matrícula","Matrícula","833","4000","0","Dinheiro","1323","37","2024-01-15 00:00:00","4","","","2024-01-15 11:13:47");
INSERT INTO entradas VALUES("7296","31","Registro de Rematrícula","Rematrícula","834","4000","0","Dinheiro","1174","25","2024-01-15 00:00:00","4","","","2024-01-15 11:14:12");
INSERT INTO entradas VALUES("7297","31","Registro de Matrículo no ATL","Matrícula ATL","3","4000","0","Dinheiro","1167","0","2024-01-15 00:00:00","4","","","2024-01-15 11:14:34");
INSERT INTO entradas VALUES("7298","31","Registro de Matrículo nas actividades Extras Curriculares","Matrícula Actividade extras curriculares","4","4900","0","Dinheiro","1209","0","2024-01-15 00:00:00","4","","","2024-01-15 11:18:56");
INSERT INTO entradas VALUES("7299","31","Venda de 4  Calção","Material Escolar","3","24000","0","Dinheiro","1300","25","2024-01-15 11:20:56","4","","","2024-01-15 11:20:56");



DROP TABLE IF EXISTS faltas;

CREATE TABLE `faltas` (
  `idfalta` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `iddisciplina` int(11) NOT NULL,
  `falta` double NOT NULL DEFAULT 0,
  `pago` int(3) NOT NULL DEFAULT 0,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idfalta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS formasdepagamento;

CREATE TABLE `formasdepagamento` (
  `idformadepagamento` int(11) NOT NULL AUTO_INCREMENT,
  `formadepagamento` varchar(220) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idformadepagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO formasdepagamento VALUES("1","Dinheiro","2023-08-12 19:51:03");
INSERT INTO formasdepagamento VALUES("2","BIC","2023-08-12 19:51:03");
INSERT INTO formasdepagamento VALUES("4","Multicaixa Express","2023-08-12 19:51:03");
INSERT INTO formasdepagamento VALUES("5","BAI","2023-08-12 19:51:03");
INSERT INTO formasdepagamento VALUES("9","BCA","2023-08-12 19:51:03");



DROP TABLE IF EXISTS funcionarios;

CREATE TABLE `funcionarios` (
  `idfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `nomedofuncionario` varchar(100) NOT NULL,
  `datadenascimento` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `localizacao` text DEFAULT NULL,
  `naturalidade` varchar(220) DEFAULT NULL,
  `proveniencia` varchar(220) DEFAULT NULL,
  `habilitacoesliterarias` varchar(180) DEFAULT NULL,
  `contabancaria` varchar(80) DEFAULT NULL,
  `datadeentrada` date NOT NULL,
  `salario` double DEFAULT NULL,
  `datadeentradanosistema` datetime NOT NULL DEFAULT current_timestamp(),
  `salarioporhora` double NOT NULL DEFAULT 0,
  `numerodedias` double NOT NULL DEFAULT 22,
  `numerodehoras` double NOT NULL DEFAULT 8,
  `estatus` varchar(11) NOT NULL DEFAULT 'activo',
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `caminhodafoto` varchar(222) DEFAULT NULL,
  `subsideodealimentacao` double DEFAULT 0,
  `subsideodetransporte` double DEFAULT 0,
  PRIMARY KEY (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO funcionarios VALUES("31","Esmael Calunga","0000-00-00","C.E.O","92924444","",""," ","","","0000-00-00","150000","2021-02-28 14:03:05","852","22","8","activo","2023-10-16 05:09:37","652cb781ad372.png","30000","35000");
INSERT INTO funcionarios VALUES("43","Faustino Vasco Joaquim Gomes","0000-00-00","Secretário"," "," "," "," "," ","AO0600 0045 0000 3495 4857 9483 4992","0000-00-00","0","2022-03-25 16:53:52","0","22","8","activo","2023-10-08 02:24:44","","15000","50000");
INSERT INTO funcionarios VALUES("44","Joana Joaquim André","0000-00-00","Secretária"," ","",""," ","","","0000-00-00","0","2022-03-25 16:55:44","0","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("45","Floide de Jesus","0000-00-00","Director Pedagógico","","","","  ","","","0000-00-00","0","2022-03-25 16:59:33","0","22","8","activo","2023-08-20 05:09:00","","50000","15000");
INSERT INTO funcionarios VALUES("46","Paulino Carlos Figueira","0000-00-00","Professor da 2 Classe","","","Kilamba Kiaxi","Professor","Ensino Primário","","0000-00-00","40000","2022-10-18 12:40:59","227","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("47","Guilherme da Conceição P. Franco","0000-00-00","Professor/ 1 Cíclo - Geografia /1 Classe","","","","Professor","12 Classe","","0000-00-00","40000","2022-10-19 08:54:28","227","22","8","activo","2023-08-20 05:09:15","","45000","120000");
INSERT INTO funcionarios VALUES("48","Júlio Tavares Bebeca","0000-00-00","","","","","Professor","","","0000-00-00","700","2022-10-19 09:18:48","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("49","Isaac Menakuntima Pedro","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:19:55","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("50","Leonardo Correia Pazitp","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:20:27","4","22","8","activo","2023-08-20 05:09:20","","33000","0");
INSERT INTO funcionarios VALUES("51","Marinela da S. Francisco","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:21:20","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("52","Osvaldo Caetano","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:21:49","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("53","Farncisco Gonga","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:22:12","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("54","Edna Kibuba","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:22:40","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("55","Andrade Buila","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:23:07","4","22","8","activo","2023-08-19 20:35:46","64e119927d3a9.jpeg","0","0");
INSERT INTO funcionarios VALUES("56","Telma Catenda Ernesto","0000-00-00","Director de Turma","","","","Professor","","","0000-00-00","700","2022-10-19 09:23:43","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("57","Sebastião Lando","0000-00-00","Coordenador de Curso C.F.B","","","","Professor","","","0000-00-00","700","2022-10-19 09:24:31","4","22","8","activo","2023-08-12 19:51:05","","0","0");
INSERT INTO funcionarios VALUES("58","Esmael Fuito","","Professor","938237412","LUANDA KUITO-N\'AERA","Ambaca","","Ensino Médio Concluido","006000023902392023","2023-11-08","120000","2023-11-16 05:06:01","615","22","8","activo","2023-11-16 05:29:16","","29000","36000");



DROP TABLE IF EXISTS historico;

CREATE TABLE `historico` (
  `idhistorico` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(11) NOT NULL,
  `descricao` varchar(90) DEFAULT NULL,
  `antigo` text DEFAULT NULL,
  `novo` text DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idhistorico`),
  KEY `idfuncionario` (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO historico VALUES("1","31","Edição","(Registro de Matrículo nas actividades Extras Curriculares) | Pago: 5000 | F. Pag: Dinheiro | 2023-12-08 00:00:00","(Registro de Matrículo nas actividades Extras Curriculares) | Pago: 500  | F. Pag: Dinheiro | 2023-12-08 00:00:00 <a href=entradamatriculadoactividade.php?identrada=7270>Clique para ver</a>","2023-12-08 14:49:18","2023-12-08 14:49:18");
INSERT INTO historico VALUES("2","31","Eliminação","pg | Valor: 580,00 KZ <a href=entradadamatriculaactividade.php?identrada=7270>Clique para ver</a>","Eliminado","2023-12-08 15:02:53","2023-12-08 15:02:53");
INSERT INTO historico VALUES("3","31","Eliminação","Todos os dados de(Registro de Matrículo nas actividades Extras Curriculares) | Valor: 500,00 KZ | Por Consolidar 14500 KZ | <a href=entradadamatriculadoatl.php?identrada=7270>Clique para ver</a>","Eliminado","2023-12-08 15:08:03","2023-12-08 15:08:03");
INSERT INTO historico VALUES("4","31","Eliminação","Todos os dados de(Registro de Matrículo nas actividades Extras Curriculares) | Valor: 0,00 KZ | Por Consolidar 0 KZ | <a href=entradadamatriculadoatl.php?identrada=7270>Clique para ver</a>","Eliminado","2023-12-08 15:11:42","2023-12-08 15:11:42");
INSERT INTO historico VALUES("5","31","Eliminação","Eliminado a sala: 1","Eliminado","2023-12-22 04:54:06","2023-12-22 04:54:06");
INSERT INTO historico VALUES("6","31","Eliminação","Eliminado a sala: 2","Eliminado","2023-12-22 04:54:34","2023-12-22 04:54:34");
INSERT INTO historico VALUES("7","31","Eliminação","Eliminado o Ciclo: Bercário","Eliminado","2023-12-25 12:51:12","2023-12-25 12:51:12");
INSERT INTO historico VALUES("8","31","Eliminação","Eliminado o Ciclo: Jardim de Infáncia","Eliminado","2023-12-25 12:52:32","2023-12-25 12:52:32");
INSERT INTO historico VALUES("9","31","Eliminação","Eliminado Matrícula do aluno <a href=aluno.php?idaluno=1316>Doriana Sambumba</a> | Na Turma: <a href=turma.php?idturma=18>9A</a> | Valor pago: 4000 ","Eliminado","2023-12-25 12:54:51","2023-12-25 12:54:51");
INSERT INTO historico VALUES("10","31","Eliminação","Eliminado Confirmação do aluno <a href=aluno.php?idaluno=1209>Ana Maria António</a> | Na Turma: <a href=turma.php?idturma=11>4C</a> | Valor pago: 2000 ","Eliminado","2023-12-25 12:55:56","2023-12-25 12:55:56");
INSERT INTO historico VALUES("11","31","Edição","(Registro de Matrículo nas actividades Extras Curriculares) | Pago: 5000 | F. Pag: Dinheiro | 2024-01-12 00:00:00","(Registro de Matrículo nas actividades Extras Curriculares) | Pago: 500  | F. Pag: Dinheiro | 2024-01-12 00:00:00 <a href=entradadamatriculaactividade.php?identrada=7280>Clique para ver</a>","2024-01-12 17:07:05","2024-01-12 17:07:05");
INSERT INTO historico VALUES("12","31","Eliminação","appa | Valor: 530,00 KZ <a href=entradadamatriculaactividade.php?identrada=7280>Clique para ver</a>","Eliminado","2024-01-12 17:07:53","2024-01-12 17:07:53");
INSERT INTO historico VALUES("13","31","Eliminação","Todos os dados de(Registro de Matrículo nas actividades Extras Curriculares) | Valor: 1.000,00 KZ | Por Consolidar 4000 KZ | <a href=entradadamatriculaactividade.php?identrada=7280>Clique para ver</a>","Eliminado","2024-01-12 17:08:12","2024-01-12 17:08:12");
INSERT INTO historico VALUES("14","31","Edição","(pasjs) | Pago: 250 | F. Pag: Dinheiro | 2024-01-12 17:15:00","(pasjs) | Pago: 350  | F. Pag: Dinheiro | 2024-01-12 17:15:00 <a href=entradapropinadoatl.php?identrada=7284>Clique para ver</a>","2024-01-12 17:17:25","2024-01-12 17:17:25");
INSERT INTO historico VALUES("15","31","Eliminação","Registro de Propina das Actividades Extras Curriculares de 08/2023 (Ref:  ) | Valor: 6.600,00 KZ <a href=entradapropinadoactividade.php?identrada=7284>Clique para ver</a>","Eliminado","2024-01-12 17:21:03","2024-01-12 17:21:03");
INSERT INTO historico VALUES("16","31","Eliminação","pasjs | Valor: 350,00 KZ <a href=entradapropinadoactividade.php?identrada=>Clique para ver</a>","Eliminado","2024-01-12 17:21:53","2024-01-12 17:21:53");
INSERT INTO historico VALUES("17","31","Edição","(Registro de Propina das Actividades Extras Curriculares de 12/2023 (Ref:  )) | Pago: 14400 | F. Pag: Dinheiro | 2024-01-12 17:25:52","(Registro de Propina das Actividades Extras Curriculares de 12/2023 (Ref:  )) | Pago: 144  | F. Pag: Dinheiro | 2024-01-12 17:25:52 <a href=entradapropinadoatl.php?identrada=7285>Clique para ver</a>","2024-01-12 17:26:14","2024-01-12 17:26:14");
INSERT INTO historico VALUES("18","31","Eliminação","tesp pori | Valor: 500,00 KZ <a href=entradapropinadoatl.php?identrada=7285>Clique para ver</a>","Eliminado","2024-01-12 17:29:18","2024-01-12 17:29:18");
INSERT INTO historico VALUES("19","31","Eliminação","tesp pori | Valor: 500,00 KZ <a href=entradapropinadoactividade.php?identrada=7285>Clique para ver</a>","Eliminado","2024-01-12 17:33:00","2024-01-12 17:33:00");
INSERT INTO historico VALUES("20","31","Eliminação","apaga | Valor: 1.000,00 KZ <a href=entradapropinadoactividade.php?identrada=7285>Clique para ver</a>","Eliminado","2024-01-12 17:33:45","2024-01-12 17:33:45");
INSERT INTO historico VALUES("21","31","Eliminação","Todos  os dados de(Registro de Propina das Actividades Extras Curriculares de 12/2023 (Ref:  )) | Valor: 5.294,00 KZ | Por Consolidar 9106 KZ | <a href=entradapropinadoactividade.php?identrada=7285>Clique para ver</a>","Eliminado","2024-01-12 17:33:59","2024-01-12 17:33:59");
INSERT INTO historico VALUES("22","31","Eliminação","Eliminado o pagamento de propina do aluno  <a href=aluno.php?idaluno=1274>Adão Zage Cazuma Pedro </a> do mês de 012/2023","Eliminado","2024-01-12 17:33:59","2024-01-12 17:33:59");
INSERT INTO historico VALUES("23","31","Eliminação","Todos  os dados de(Registro de Propina das Actividades Extras Curriculares de 12/2023 (Ref:  )) | Valor: 14.400,00 KZ | Por Consolidar 0 KZ | <a href=entradapropinadoactividade.php?identrada=7292>Clique para ver</a>","Eliminado","2024-01-12 17:34:39","2024-01-12 17:34:39");
INSERT INTO historico VALUES("24","31","Eliminação","Eliminado o pagamento de propina do aluno  <a href=aluno.php?idaluno=1274>Adão Zage Cazuma Pedro </a> do mês de 012/2023","Eliminado","2024-01-12 17:34:39","2024-01-12 17:34:39");



DROP TABLE IF EXISTS historico_sincronizacao;

CREATE TABLE `historico_sincronizacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datadasicronizacao` datetime NOT NULL,
  `numeroderegistrossicronizados` int(11) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO historico_sincronizacao VALUES("1","2023-11-06 08:11:36","5","2023-11-06 07:12:00");
INSERT INTO historico_sincronizacao VALUES("2","2023-11-01 00:00:00","0","2023-11-06 07:18:51");
INSERT INTO historico_sincronizacao VALUES("3","2023-11-01 00:00:00","0","2023-11-06 07:20:07");
INSERT INTO historico_sincronizacao VALUES("4","2023-11-06 07:21:34","0","2023-11-06 07:21:34");
INSERT INTO historico_sincronizacao VALUES("5","2023-11-06 07:41:02","0","2023-11-06 07:41:02");
INSERT INTO historico_sincronizacao VALUES("6","2023-11-06 07:42:47","0","2023-11-06 07:42:47");
INSERT INTO historico_sincronizacao VALUES("7","2023-11-06 07:44:49","0","2023-11-06 07:44:49");
INSERT INTO historico_sincronizacao VALUES("8","2023-11-07 13:55:12","0","2023-11-07 13:55:12");
INSERT INTO historico_sincronizacao VALUES("9","2023-11-07 14:41:18","0","2023-11-07 14:41:18");



DROP TABLE IF EXISTS impostos;

CREATE TABLE `impostos` (
  `idimposto` int(11) NOT NULL AUTO_INCREMENT,
  `imposto` varchar(100) NOT NULL,
  `incidencia` varchar(100) NOT NULL DEFAULT 'entradas',
  `percentagem` double NOT NULL DEFAULT 0,
  `obs` varchar(220) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idimposto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO impostos VALUES("1","Imposto sobre Venda","entradas","14","","2023-08-12 19:51:08");
INSERT INTO impostos VALUES("2","Imposto sobre Consumo","saidas","3","","2023-08-12 19:51:08");
INSERT INTO impostos VALUES("7","Imposto de Renda","entradas","7"," ","2023-08-12 19:51:08");



DROP TABLE IF EXISTS lembretes;

CREATE TABLE `lembretes` (
  `idlembrete` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text DEFAULT NULL,
  `datadolembrete` date NOT NULL,
  `datadecadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idlembrete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS matriculaactividades;

CREATE TABLE `matriculaactividades` (
  `idmatriculaactividade` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `idactividade` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `actividade` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT 'activo',
  `ultimomespago` date NOT NULL DEFAULT '0000-00-00',
  `descontoparapropinas` double NOT NULL DEFAULT 0,
  `tipodealuno` varchar(222) NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`idmatriculaactividade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO matriculaactividades VALUES("1","1274","4","2","4900","0","4900","Aulas de Dança","2023-12-08","","activo","2023-11-01","0","Normal");
INSERT INTO matriculaactividades VALUES("2","1274","4","1","15000","0","4500","Aulas de Capoeira","2023-12-07","","activo","2023-08-01","0","Normal");
INSERT INTO matriculaactividades VALUES("3","1282","4","1","5000","0","0","Aulas de Capoeira","2024-01-12","","activo","0000-00-00","0","Normal");
INSERT INTO matriculaactividades VALUES("4","1209","4","2","4900","0","4900","Aulas de Dança","2024-01-15","","activo","0000-00-00","0","Normal");



DROP TABLE IF EXISTS matriculaatl;

CREATE TABLE `matriculaatl` (
  `idmatriculaatl` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `idatl` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `atl` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT 'activo',
  `ultimomespago` date NOT NULL DEFAULT '0000-00-00',
  `descontoparapropinas` double NOT NULL DEFAULT 0,
  `tipodealuno` varchar(222) NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`idmatriculaatl`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO matriculaatl VALUES("1","1274","4","1","4000","0","4000","Turma da Marta","2023-11-26","","activo","0000-00-00","0","Normal");
INSERT INTO matriculaatl VALUES("2","1199","4","1","4000","0","4000","Turma da Marta","2023-12-25","","activo","0000-00-00","0","Normal");
INSERT INTO matriculaatl VALUES("3","1167","4","1","4000","0","4000","Turma da Marta","2024-01-15","","activo","0000-00-00","0","Normal");



DROP TABLE IF EXISTS matriculaseconfirmacoes;

CREATE TABLE `matriculaseconfirmacoes` (
  `idmatriculaeconfirmacao` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `tipodealuno` varchar(50) NOT NULL DEFAULT 'Normal',
  `idanolectivo` int(11) NOT NULL,
  `idturma` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL DEFAULT 'Matrícula',
  `preco` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `turma` varchar(50) NOT NULL,
  `sala` varchar(50) NOT NULL,
  `curso` varchar(200) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `classe` varchar(10) NOT NULL,
  `data` date DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT 'activo',
  `ultimomespago` date NOT NULL,
  `classificacaofinal` varchar(50) NOT NULL DEFAULT 'Sem Classificação',
  `descontoparapropinas` double NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reconfirmou` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idmatriculaeconfirmacao`)
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO matriculaseconfirmacoes VALUES("818","1304","Normal","4","22","Rematrícula","4000","0","4000","6B","16","Nenhum","Manhã","6ª","2023-04-24","","activo","2023-09-01","Sem Classificação","0","2023-10-09 15:02:43","0");
INSERT INTO matriculaseconfirmacoes VALUES("819","1313","Normal","4","18","Matrícula","4000","0","4000","9A","13","Nenhum","Tarde","9ª","2023-01-25","","activo","2023-10-01","Sem Classificação","500","2023-10-09 03:34:40","0");
INSERT INTO matriculaseconfirmacoes VALUES("820","1314","Normal","4","11","Matrícula","4500","0","4500","4C","9","Nenhum","Tarde","4ª","2023-09-21","","activo","2023-08-01","Sem Classificação","0","2023-10-10 10:15:59","0");
INSERT INTO matriculaseconfirmacoes VALUES("821","1315","Normal","2","33","Matrícula","10000","0","10000","PreA","9","Nenhum","Tarde","Pré- A","2023-10-10","","activo","0000-00-00","Sem Classificação","0","2023-10-10 10:17:45","0");
INSERT INTO matriculaseconfirmacoes VALUES("822","1316","Normal","4","18","Matrícula","4000","0","4000","9A","13","Nenhum","Tarde","9ª","2023-10-16","","activo","0000-00-00","Sem Classificação","0","2023-10-16 04:46:23","0");
INSERT INTO matriculaseconfirmacoes VALUES("823","1317","Normal","4","20","Confirmação","2000","0","2000","9C","9","Nenhum","Tarde","9ª","2023-10-16","","activo","0000-00-00","Sem Classificação","0","2023-10-16 05:00:11","0");
INSERT INTO matriculaseconfirmacoes VALUES("824","1317","Normal","4","19","Confirmação","2000","0","2000","9B","14","Nenhum","Tarde","9ª","2023-10-16","","activo","0000-00-00","Sem Classificação","0","2023-10-16 05:03:22","0");
INSERT INTO matriculaseconfirmacoes VALUES("825","1318","Normal","4","24","Matrícula","4000","0","4000","5A","12","Nenhum","Manhã","5ª","2023-10-16","","activo","0000-00-00","Sem Classificação","0","2023-12-11 08:55:03","0");
INSERT INTO matriculaseconfirmacoes VALUES("826","1318","Normal","4","21","Matrícula","4000","0","4000","6A","14","Nenhum","Manhã","6ª","2023-10-16","","activo","0000-00-00","Sem Classificação","0","2023-10-16 05:18:42","0");
INSERT INTO matriculaseconfirmacoes VALUES("827","1319","Normal","4","25","Matrícula","4000","0","4000","5B","13","Nenhum","Tarde","5ª","2023-11-06","","activo","0000-00-00","Sem Classificação","0","2023-11-06 06:52:07","0");
INSERT INTO matriculaseconfirmacoes VALUES("828","1321","Normal","4","24","Matrícula","4000","0","0","5A","12","Nenhum","Manhã","5ª","2023-11-17","","activo","0000-00-00","Sem Classificação","0","2023-12-11 08:55:03","0");
INSERT INTO matriculaseconfirmacoes VALUES("829","1321","Normal","4","21","Matrícula","4000","0","4000","6A","14","Nenhum","Manhã","6ª","2023-11-17","","activo","0000-00-00","Sem Classificação","0","2023-11-17 03:43:37","0");
INSERT INTO matriculaseconfirmacoes VALUES("830","1174","Normal","4","19","Confirmação","2000","0","2000","9B","14","Nenhum","Tarde","9ª","2023-11-17","","activo","0000-00-00","Sem Classificação","0","2023-11-17 03:49:08","0");
INSERT INTO matriculaseconfirmacoes VALUES("832","1300","Normal","4","25","Rematrícula","4000","0","4000","5B","13","","Tarde","","2023-12-11","","Trancou o Ano","2022-01-01","Sem Classificação","0","2024-01-15 11:12:56","0");
INSERT INTO matriculaseconfirmacoes VALUES("833","1323","Normal","4","37","Matrícula","4000","0","4000","Banana","9","","Tarde","","2024-01-15","","activo","0000-00-00","Sem Classificação","0","2024-01-15 11:13:47","0");
INSERT INTO matriculaseconfirmacoes VALUES("834","1174","Normal","4","25","Rematrícula","4000","0","4000","5B","13","","Tarde","","2024-01-15","","activo","0000-00-00","Sem Classificação","0","2024-01-15 11:14:12","0");



DROP TABLE IF EXISTS matriculatransporte;

CREATE TABLE `matriculatransporte` (
  `idmatriculatransporte` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `idtransporte` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `transporte` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT 'activo',
  `ultimomespago` date NOT NULL,
  `descontoparapropinas` double NOT NULL DEFAULT 0,
  `tipodealuno` varchar(222) NOT NULL DEFAULT 'Normal',
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idmatriculatransporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS mediasdoano;

CREATE TABLE `mediasdoano` (
  `idmediadoano` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `idtrimestre` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `tipodeturma` varchar(222) NOT NULL DEFAULT 'Transição',
  `posicao` int(2) NOT NULL,
  `arredondarmedia` int(2) NOT NULL DEFAULT 0,
  `tipodemedia` varchar(100) NOT NULL DEFAULT 'denotas',
  `idmediamaior` int(11) NOT NULL DEFAULT 0,
  `percentagem` double NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idmediadoano`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO mediasdoano VALUES("2","MT1","11","4","Transição","1","0","denotas","11","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("3","MT1","11","4","Exame","1","0","denotas","8","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("4","MT2","12","4","Transição","2","0","denotas","11","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("5","MT2","12","4","Exame","2","0","denotas","8","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("6","MT3","13","4","Transição","5","0","denotas","11","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("7","MT3","13","4","Exame","6","0","denotas","8","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("8","MFD","13","4","Exame","7","0","demedias","9","0.4","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("9","MF","13","4","Exame","8","0","ponderada","0","0","2023-08-12 19:51:13");
INSERT INTO mediasdoano VALUES("11","MF","13","4","Transição","10","0","demedias","0","0","2023-08-12 19:51:13");



DROP TABLE IF EXISTS metas;

CREATE TABLE `metas` (
  `idmeta` int(11) NOT NULL AUTO_INCREMENT,
  `nomedameta` varchar(100) DEFAULT NULL,
  `sector` varchar(220) DEFAULT '',
  `diainicio` date DEFAULT NULL,
  `diafim` date NOT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `obs` text DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `estatus` varchar(100) NOT NULL DEFAULT 'em andamento',
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idmeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS periodos;

CREATE TABLE `periodos` (
  `idperiodo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idperiodo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO periodos VALUES("1","Manhã","2023-08-12 19:53:03");
INSERT INTO periodos VALUES("2","Tarde","2023-08-12 19:53:03");



DROP TABLE IF EXISTS planoanual;

CREATE TABLE `planoanual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(5) NOT NULL,
  `mes` int(3) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `descricao` varchar(222) DEFAULT NULL,
  `semanas` int(2) NOT NULL DEFAULT 4,
  `temas` text DEFAULT NULL,
  `actividades` text DEFAULT NULL,
  `objectivo` text DEFAULT NULL,
  `participantes` text DEFAULT NULL,
  `materiais` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO planoanual VALUES("2","2023","11","4","Tornar a crianca mais inteligente","4","","comer
correr","saber comer","professores
pais","");
INSERT INTO planoanual VALUES("3","2023","12","4","Ensinar a criança a pular","4","Pular
Levantar crianda
","Saltar corda
pular corda
sair do Chão","Controlo do corpo
Controlo dos movimentos","Pais
meninos","corda 
lapis
");



DROP TABLE IF EXISTS planomensal;

CREATE TABLE `planomensal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idanolectivo` int(11) NOT NULL,
  `idciclo` int(11) NOT NULL,
  `tema` text NOT NULL,
  `ano` int(5) NOT NULL,
  `mes` int(3) NOT NULL,
  `objectivogeral` text DEFAULT NULL,
  `dominio` text DEFAULT NULL,
  `areacurricular` text DEFAULT NULL,
  `subtema` text DEFAULT NULL,
  `conteudo` text DEFAULT NULL,
  `objectivosespecificos` text DEFAULT NULL,
  `actividade` text DEFAULT NULL,
  `meiosdeensino` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO planomensal VALUES("2","4","4","Revulocionar a crianca","2023","12","levar a crianca a ppensa","linua","area cu","tema 1 
tema 3","conte 1 ","","brincadeira 
l","quadro
relva");
INSERT INTO planomensal VALUES("3","4","4","Cultivar a leitura","2023","11","saber ler","escrita","lingua portuguesa","ler
execurar","conteu 1

conte 2","levar boas licoes","activi","lapis
");
INSERT INTO planomensal VALUES("4","4","4","Desenvolc 2","2023","12","lerv","ie","fn","di","ifq","ifo","iof","fd");



DROP TABLE IF EXISTS presenca;

CREATE TABLE `presenca` (
  `idfalta` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(11) NOT NULL,
  `ano` int(4) NOT NULL,
  `dia` int(3) NOT NULL,
  `mes` int(3) NOT NULL,
  `falta` varchar(4) DEFAULT NULL,
  `horastrabalhadas` double NOT NULL DEFAULT 0,
  `horasextras` double NOT NULL DEFAULT 0,
  `remunerar` int(2) NOT NULL DEFAULT 1,
  `salariopordia` double NOT NULL DEFAULT 0,
  `salariopelahorasextras` double NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idfalta`),
  KEY `idfuncionario` (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO presenca VALUES("1","31","2023","1","8","P","8","0","1","2320","0","2023-08-19 21:50:04");
INSERT INTO presenca VALUES("2","31","2023","2","8","P","8","0","1","2320","0","2023-08-19 21:50:05");
INSERT INTO presenca VALUES("3","31","2023","5","8","P","8","0","1","2320","0","2023-08-19 21:50:08");
INSERT INTO presenca VALUES("4","31","2023","7","8","P","8","0","1","2320","0","2023-08-19 21:50:10");
INSERT INTO presenca VALUES("5","31","2023","9","8","12","0","0","0","0","0","2023-08-19 21:50:16");
INSERT INTO presenca VALUES("6","31","2023","14","8","12","0","0","0","0","0","2023-08-19 21:50:18");
INSERT INTO presenca VALUES("7","55","2023","2","11","P","8","0","1","32","0","2023-11-16 06:08:59");
INSERT INTO presenca VALUES("8","54","2023","3","11","P","8","0","1","32","0","2023-11-16 06:09:01");
INSERT INTO presenca VALUES("9","31","2023","2","11","P","8","0","1","6816","0","2023-11-16 06:09:04");



DROP TABLE IF EXISTS presencaalunos;

CREATE TABLE `presencaalunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmatricula` int(11) NOT NULL,
  `dia` int(2) NOT NULL,
  `mes` int(2) NOT NULL,
  `ano` int(5) NOT NULL,
  `presenca` varchar(5) NOT NULL DEFAULT 'P',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO presencaalunos VALUES("1","829","2","11","2023","p");
INSERT INTO presencaalunos VALUES("2","829","3","11","2023","p");
INSERT INTO presencaalunos VALUES("3","826","3","11","2023","f");
INSERT INTO presencaalunos VALUES("4","829","1","11","2023","f");
INSERT INTO presencaalunos VALUES("5","829","7","11","2023","F");
INSERT INTO presencaalunos VALUES("6","829","6","11","2023","p");
INSERT INTO presencaalunos VALUES("7","826","6","11","2023","p");
INSERT INTO presencaalunos VALUES("8","826","8","11","2023","f");
INSERT INTO presencaalunos VALUES("9","829","9","11","2023","p");
INSERT INTO presencaalunos VALUES("10","826","1","11","2023","p");
INSERT INTO presencaalunos VALUES("11","826","2","11","2023","p");
INSERT INTO presencaalunos VALUES("12","829","8","11","2023","p");
INSERT INTO presencaalunos VALUES("13","829","13","11","2023","P");
INSERT INTO presencaalunos VALUES("14","826","14","11","2023","P");
INSERT INTO presencaalunos VALUES("15","829","10","11","2023","p");
INSERT INTO presencaalunos VALUES("16","829","11","11","2023","p");
INSERT INTO presencaalunos VALUES("17","829","12","11","2023","p");
INSERT INTO presencaalunos VALUES("18","829","14","11","2023","p");
INSERT INTO presencaalunos VALUES("19","829","16","11","2023","p");
INSERT INTO presencaalunos VALUES("20","829","17","11","2023","p");
INSERT INTO presencaalunos VALUES("21","826","9","11","2023","p");
INSERT INTO presencaalunos VALUES("22","826","7","11","2023","p");
INSERT INTO presencaalunos VALUES("23","826","10","11","2023","p");
INSERT INTO presencaalunos VALUES("24","826","13","11","2023","p");
INSERT INTO presencaalunos VALUES("25","826","12","11","2023","p");
INSERT INTO presencaalunos VALUES("26","826","4","11","2023","f");
INSERT INTO presencaalunos VALUES("27","829","23","11","2023","p");
INSERT INTO presencaalunos VALUES("28","832","1","1","2024","p");
INSERT INTO presencaalunos VALUES("29","832","3","1","2024","p");
INSERT INTO presencaalunos VALUES("30","827","3","1","2024","p");



DROP TABLE IF EXISTS presencaprofessores;

CREATE TABLE `presencaprofessores` (
  `idpresencaprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `idprofessor` int(11) NOT NULL,
  `diadapresenca` date NOT NULL,
  `totaldetempos` double NOT NULL DEFAULT 0,
  `salarioportempo` double NOT NULL DEFAULT 0,
  `iddisciplina` int(11) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idpresencaprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO presencaprofessores VALUES("1","31","2023-10-01","4","700","308","2023-10-08 04:32:00");
INSERT INTO presencaprofessores VALUES("2","31","2023-10-03","3","700","308","2023-10-08 04:32:05");
INSERT INTO presencaprofessores VALUES("3","31","2023-10-04","2","700","308","2023-10-08 04:32:08");
INSERT INTO presencaprofessores VALUES("4","46","2023-10-02","2","500","308","2023-10-08 04:46:37");
INSERT INTO presencaprofessores VALUES("5","46","2023-10-03","4","500","308","2023-10-08 04:46:39");
INSERT INTO presencaprofessores VALUES("6","46","2023-10-04","2","500","308","2023-10-08 04:46:41");
INSERT INTO presencaprofessores VALUES("7","46","2023-10-05","2","500","308","2023-10-08 04:46:43");
INSERT INTO presencaprofessores VALUES("8","46","2023-10-09","3","500","308","2023-10-08 08:03:53");
INSERT INTO presencaprofessores VALUES("9","46","2023-10-12","5","500","308","2023-10-08 08:03:54");
INSERT INTO presencaprofessores VALUES("10","46","2023-10-13","4","500","308","2023-10-08 08:03:55");
INSERT INTO presencaprofessores VALUES("11","31","2023-10-03","4","700","309","2023-10-08 08:28:15");
INSERT INTO presencaprofessores VALUES("12","31","2023-10-02","5","700","310","2023-10-08 08:28:16");
INSERT INTO presencaprofessores VALUES("13","31","2023-10-04","7","700","311","2023-10-08 08:28:20");
INSERT INTO presencaprofessores VALUES("14","31","2023-10-04","7","700","309","2023-10-08 08:28:21");
INSERT INTO presencaprofessores VALUES("15","31","2023-10-05","4","700","310","2023-10-08 08:28:23");
INSERT INTO presencaprofessores VALUES("16","31","2023-10-06","3","700","308","2023-10-08 08:28:25");
INSERT INTO presencaprofessores VALUES("17","31","2023-10-02","2","700","308","2023-10-08 09:23:34");
INSERT INTO presencaprofessores VALUES("18","31","2023-10-11","6","700","308","2023-10-08 09:23:38");
INSERT INTO presencaprofessores VALUES("19","31","2023-10-05","4","700","311","2023-10-08 09:24:25");



DROP TABLE IF EXISTS produtos;

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomedoproduto` varchar(100) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `precodecompra` double NOT NULL DEFAULT 0,
  `quantidade` double NOT NULL DEFAULT 0,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `datadeexpiracao` date DEFAULT NULL,
  `ultimavenda` date DEFAULT NULL,
  `estatus` varchar(30) NOT NULL DEFAULT 'operacional',
  `stockminimo` int(11) NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;

INSERT INTO produtos VALUES("1","Uniforme Polo","7000","4000","217","2022-10-07 14:47:10","0000-00-00","2023-10-16","operacional","20","2023-10-16 05:54:05");
INSERT INTO produtos VALUES("2","Calção","6000","3500","11","2022-11-08 10:02:05","0000-00-00","2024-01-15","operacional","10","2024-01-15 11:20:56");
INSERT INTO produtos VALUES("3","Saia","6000","3500","23","2022-11-08 10:02:33","0000-00-00","2023-12-25","operacional","10","2023-12-25 14:58:51");
INSERT INTO produtos VALUES("4","Folha de Prova","75","30","5499","2022-12-05 01:37:04","0000-00-00","2023-05-08","operacional","50","2023-08-12 19:53:11");



DROP TABLE IF EXISTS propinas;

CREATE TABLE `propinas` (
  `idpropina` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `multa` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `mespago` date NOT NULL,
  `datadopagamento` timestamp NOT NULL DEFAULT current_timestamp(),
  `obs` varchar(220) NOT NULL,
  `codigodepropina` varchar(200) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `datadedeposito` date DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idpropina`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO propinas VALUES("1","1304","818","4","5500","0","5500","0","2023-04-01","2023-07-27 10:13:23","","CDP13041/78097","79979","2023-07-05","2023-08-12 19:53:13");
INSERT INTO propinas VALUES("2","1304","818","4","5500","0","5500","0","2023-05-01","2023-07-27 10:14:00","","CDP13042/44412","76876","2023-07-20","2023-08-12 19:53:13");
INSERT INTO propinas VALUES("3","1304","818","4","5500","550","6050","0","2023-06-01","2023-10-09 03:34:11","","CDP13043/12704","","","2023-10-09 03:34:11");
INSERT INTO propinas VALUES("4","1313","819","4","6500","650","6500","500","2023-10-01","2023-10-09 03:34:40","","CDP13134/76016","","","2023-10-09 03:34:40");
INSERT INTO propinas VALUES("5","1304","818","4","5500","550","6050","0","2023-07-01","2023-10-09 15:02:35","","CDP13045/54958","","","2023-10-09 15:02:35");
INSERT INTO propinas VALUES("6","1304","818","4","5500","550","6050","0","2023-08-01","2023-10-09 15:02:39","","CDP13046/62580","","","2023-10-09 15:02:39");
INSERT INTO propinas VALUES("7","1304","818","4","5500","550","6050","0","2023-09-01","2023-10-09 15:02:43","","CDP13047/56026","","","2023-10-09 15:02:43");
INSERT INTO propinas VALUES("8","1314","820","4","4500","0","4500","0","2023-08-01","2023-10-10 10:15:59","","CDP13148/25260","","","2023-10-10 10:15:59");
INSERT INTO propinas VALUES("9","1300","832","4","5500","0","5500","0","2022-01-01","2024-01-15 11:12:55","","CDP13009/84663","","","2024-01-15 11:12:55");



DROP TABLE IF EXISTS propinasactividades;

CREATE TABLE `propinasactividades` (
  `idpropina` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaactividade` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `multa` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `mespago` date NOT NULL,
  `datadopagamento` timestamp NOT NULL DEFAULT current_timestamp(),
  `obs` varchar(220) NOT NULL,
  `codigodepropina` varchar(200) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `datadedeposito` date DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idpropina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO propinasactividades VALUES("1","1274","1","4","12000","5000","17000","0","2023-09-01","2023-12-08 13:26:13","","CDP12741/86190","","","2023-12-08 13:26:13");
INSERT INTO propinasactividades VALUES("2","1274","1","4","12000","2400","14400","0","2023-10-01","2023-12-08 13:27:03","","CDP12742/90359","","","2023-12-08 13:27:03");
INSERT INTO propinasactividades VALUES("3","1274","2","4","5500","0","5500","0","2023-07-01","2023-12-08 13:30:46","","CDP12743/48912","","","2023-12-08 13:30:46");
INSERT INTO propinasactividades VALUES("4","1274","1","4","12000","2400","14400","0","2023-11-01","2023-12-25 15:02:41","","CDP12744/70454","","","2023-12-25 15:02:41");
INSERT INTO propinasactividades VALUES("5","1274","2","4","6500","1100","0","0","2023-08-01","2024-01-12 17:08:48","","CDP12745/42585","","","2024-01-12 17:21:53");



DROP TABLE IF EXISTS propinasdoatl;

CREATE TABLE `propinasdoatl` (
  `idpropinadoatl` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaatl` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `multa` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `mespago` date NOT NULL,
  `datadopagamento` timestamp NOT NULL DEFAULT current_timestamp(),
  `obs` varchar(220) NOT NULL,
  `codigodepropina` varchar(200) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `datadedeposito` date NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idpropinadoatl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS propinasdotransporte;

CREATE TABLE `propinasdotransporte` (
  `idpropinadotransporte` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculatransporte` int(11) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `multa` double NOT NULL DEFAULT 0,
  `valorpago` double NOT NULL DEFAULT 0,
  `desconto` double NOT NULL DEFAULT 0,
  `mespago` date NOT NULL,
  `datadopagamento` timestamp NOT NULL DEFAULT current_timestamp(),
  `obs` varchar(220) NOT NULL,
  `codigodepropina` varchar(200) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `datadedeposito` date NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idpropinadotransporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS relatoriodiario;

CREATE TABLE `relatoriodiario` (
  `idrelatoriodiario` int(11) NOT NULL AUTO_INCREMENT,
  `idaluno` int(11) NOT NULL,
  `idmatriculaeconfirmacao` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `data` date NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idrelatoriodiario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO relatoriodiario VALUES("1","1316","822","comportou-se mal oi","2024-01-04","31","2024-01-04 06:44:06");
INSERT INTO relatoriodiario VALUES("2","1316","822","beu
","2024-01-04","31","2024-01-04 06:47:05");



DROP TABLE IF EXISTS saidas;

CREATE TABLE `saidas` (
  `idsaida` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(11) DEFAULT NULL,
  `descricao` varchar(220) DEFAULT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `divida` double NOT NULL DEFAULT 0,
  `datadasaida` datetime NOT NULL DEFAULT current_timestamp(),
  `idtipo` int(11) DEFAULT NULL,
  `idanolectivo` int(11) NOT NULL DEFAULT 2,
  `formadesaida` varchar(200) NOT NULL DEFAULT 'Dinheiro',
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idsaida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS salario;

CREATE TABLE `salario` (
  `idsalario` int(11) NOT NULL AUTO_INCREMENT,
  `idfuncionario` int(11) NOT NULL,
  `ano` int(4) DEFAULT NULL,
  `mes` int(2) DEFAULT NULL,
  `faltas` int(3) NOT NULL DEFAULT 0,
  `horastrabalhadas` int(11) DEFAULT NULL,
  `salarioactualporhora` double DEFAULT 0,
  `salarioactualbase` double NOT NULL DEFAULT 0,
  `salariobruto` double NOT NULL DEFAULT 0,
  `horasextras` int(11) DEFAULT NULL,
  `valorextra` double DEFAULT NULL,
  `abonodefamilia` double NOT NULL DEFAULT 0,
  `subsidiodeferias` double NOT NULL DEFAULT 0,
  `subsidiodenatal` double NOT NULL DEFAULT 0,
  `segurancasocial` double NOT NULL DEFAULT 0,
  `valorporreceber` double DEFAULT NULL,
  `irt` double DEFAULT NULL,
  `valorrecebido` double DEFAULT NULL,
  `formapagamento` varchar(130) DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `datadepagamento` datetime NOT NULL DEFAULT current_timestamp(),
  `idnasaida` int(11) NOT NULL,
  `outrosdescontos` double NOT NULL DEFAULT 0,
  `idposto` int(11) NOT NULL DEFAULT -1,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idsalario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS salas;

CREATE TABLE `salas` (
  `idsala` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idsala`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO salas VALUES("3","3","2023-08-12 20:08:20");
INSERT INTO salas VALUES("4","4","2023-08-12 20:08:20");
INSERT INTO salas VALUES("5","5","2023-08-12 20:08:20");
INSERT INTO salas VALUES("6","6","2023-08-12 20:08:20");
INSERT INTO salas VALUES("7","7","2023-08-12 20:08:20");
INSERT INTO salas VALUES("8","8","2023-08-12 20:08:20");
INSERT INTO salas VALUES("9","9","2023-08-12 20:08:20");
INSERT INTO salas VALUES("10","10","2023-08-12 20:08:20");
INSERT INTO salas VALUES("11","11","2023-08-12 20:08:20");
INSERT INTO salas VALUES("12","12","2023-08-12 20:08:20");
INSERT INTO salas VALUES("13","13","2023-08-12 20:08:20");
INSERT INTO salas VALUES("14","14","2023-08-12 20:08:20");
INSERT INTO salas VALUES("15","15","2023-08-12 20:08:20");
INSERT INTO salas VALUES("16","16","2023-08-12 20:08:20");
INSERT INTO salas VALUES("17","17","2023-08-12 20:08:20");



DROP TABLE IF EXISTS sessoesdeavaliacao;

CREATE TABLE `sessoesdeavaliacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO sessoesdeavaliacao VALUES("1","Geral");
INSERT INTO sessoesdeavaliacao VALUES("2","Expressão e Comunicação");



DROP TABLE IF EXISTS stock;

CREATE TABLE `stock` (
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) NOT NULL,
  `precodevenda` double NOT NULL DEFAULT 0,
  `precodecompra` double NOT NULL DEFAULT 0,
  `quantidade` int(8) NOT NULL DEFAULT 0,
  `datadecadastro` datetime NOT NULL DEFAULT current_timestamp(),
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idstock`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO stock VALUES("1","1","7000","7000","150","2022-10-07 14:47:10","2023-08-12 20:08:22");
INSERT INTO stock VALUES("2","1","7000","4000","150","2022-10-10 12:41:31","2023-08-12 20:08:22");
INSERT INTO stock VALUES("3","2","6000","3500","25","2022-11-08 10:02:05","2023-08-12 20:08:22");
INSERT INTO stock VALUES("4","3","6000","3500","25","2022-11-08 10:02:33","2023-08-12 20:08:22");
INSERT INTO stock VALUES("5","4","75","30","6000","2022-12-05 01:37:04","2023-08-12 20:08:22");



DROP TABLE IF EXISTS tipodedisciplinas;

CREATE TABLE `tipodedisciplinas` (
  `idtipodedisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `abreviatura` varchar(20) DEFAULT NULL,
  `tipodedisciplina` varchar(220) NOT NULL DEFAULT 'Normal',
  `agrupamento` varchar(200) DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idtipodedisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO tipodedisciplinas VALUES("1","Matemática","MAT","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("2","Física","FIS","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("3","Biologia","BIO","Chave","Formação Específica","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("4","Química","QUIM","Normal","Formação Específica","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("5","Inglês","ING","Normal","Opção","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("6","Educação Física","Ed. Física","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("7","Língua Portuguesa ","L. Port","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("8","Estudo do Meio","Est. Meio","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("9","Geometria Descritiva","Geom. Desc","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("10","Geologia","Geol","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("11","Geografia","Geog","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("12","Ciência da Natureza","C. Natureza","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("13","Informática","Informática","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("14","Empreendedorismo","EMP","Normal","Opção","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("15","Educação Moral e Cívica","E.M.C","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("16","Educação Visual e Plastica","E.V.P","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("17","Educação Manual e Plastica","E.M.P","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("18","História","Histo","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("19","Direito","DRT","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("20","Economia","ECON","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("21","Densenvolvimento ","DES","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("22","Filosofia","FILOS","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("23","Sociologia","SOCIOL","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("24","Educação Musical","Ed. Musical","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("25","Estudo do Meio Físico","E.M.F","Normal","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("26","Representação Matemática","R. Mat","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("27","Comunicação Linguística","C.Linguística","Chave","Formação Geral","2023-08-12 20:08:23");
INSERT INTO tipodedisciplinas VALUES("28","Educação Laboral","Ed. Lab","Normal","Formação Geral","2023-08-12 20:08:23");



DROP TABLE IF EXISTS tipodesaidas;

CREATE TABLE `tipodesaidas` (
  `idtipodesaida` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(220) NOT NULL,
  `categoria` varchar(200) NOT NULL DEFAULT 'Custos Variados',
  `numerodesaida` int(11) NOT NULL DEFAULT 0,
  `valorlimite` double NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idtipodesaida`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO tipodesaidas VALUES("1","Salário","Gastos com o Pessoal","11","500000","2023-08-12 20:08:24");
INSERT INTO tipodesaidas VALUES("2","Energia","Custos Variados","4","8000","2023-08-12 20:08:24");
INSERT INTO tipodesaidas VALUES("3","Gastos Exporâticos","Outros","96","45000","2023-08-12 20:08:24");
INSERT INTO tipodesaidas VALUES("4","Aluguer","Custos Variados","2","12000","2023-08-12 20:08:24");
INSERT INTO tipodesaidas VALUES("5","Alimentação","Custos Variados","23","100000","2023-08-12 20:08:24");
INSERT INTO tipodesaidas VALUES("6","Empréstimos","Gastos com o Pessoal","1","50000","2023-08-12 20:08:24");



DROP TABLE IF EXISTS tiposdeavalicoes;

CREATE TABLE `tiposdeavalicoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(222) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tiposdeavalicoes VALUES("1","Atirar e apanhar bola","1");
INSERT INTO tiposdeavalicoes VALUES("2"," capacidade de relaxar","1");
INSERT INTO tiposdeavalicoes VALUES("3"," abaixar-se com facilidade","1");
INSERT INTO tiposdeavalicoes VALUES("4","Sabe falar bem","2");
INSERT INTO tiposdeavalicoes VALUES("5","
tem controlo sobre as palavras","2");
INSERT INTO tiposdeavalicoes VALUES("6","
Imita as palavras dos adultos
","2");
INSERT INTO tiposdeavalicoes VALUES("7","Sabe pintar","3");
INSERT INTO tiposdeavalicoes VALUES("8"," sabe desenhar","3");
INSERT INTO tiposdeavalicoes VALUES("9"," pega bem o pincel","3");
INSERT INTO tiposdeavalicoes VALUES("10"," conhece os nomes das cores","3");
INSERT INTO tiposdeavalicoes VALUES("11","Saber diferenciar as cores","3");
INSERT INTO tiposdeavalicoes VALUES("12"," capacidade de bolar plano","2");



DROP TABLE IF EXISTS tiposdenotas;

CREATE TABLE `tiposdenotas` (
  `idtipodenota` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `idtrimestre` int(11) NOT NULL,
  `percentagemnotrimestre` double NOT NULL DEFAULT 0.5,
  `posicao` int(2) NOT NULL DEFAULT 1,
  `especial` int(1) NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idtipodenota`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO tiposdenotas VALUES("1","MAC","0","1","0.33","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("2","PP   ","0","1","0.33","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("3","MAC","0","2","0.33","3","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("4","CPP","0","2","0.33","4","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("5","MAC","0","3","0.3","5","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("6","CPP","0","3","0.3","6","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("9","CPP","0","7","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("10","MAC","0","6","0.3","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("11","CPP","0","6","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("12","MAC","0","5","0.3","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("13","CPP","0","5","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("15","CPE","2","0","0.6","1","1","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("16","NER","2","0","1","2","1","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("17","PT","2","3","0.4","9","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("18","PT","2","2","0.34","6","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("19","PT","2","1","0.34","3","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("20"," MAC   ","4","13","0.3","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("21"," NPP   ","4","13","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("22"," NPT   ","4","13","0.4","3","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("23","MAC","4","12","0.3","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("24","NPP","4","12","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("25","NPT","4","12","0.4","3","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("26","MAC","4","11","0.3","1","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("27","NPP","4","11","0.3","2","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("28","NPT","4","11","0.4","3","0","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("29","NE","4","0","0.6","1","1","2023-08-12 20:08:25");
INSERT INTO tiposdenotas VALUES("30","MF","4","0","1","2","1","2023-08-12 20:08:25");



DROP TABLE IF EXISTS transportes;

CREATE TABLE `transportes` (
  `idtransporte` int(11) NOT NULL AUTO_INCREMENT,
  `idanolectivo` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `propina` double NOT NULL DEFAULT 0,
  `matricula` double NOT NULL DEFAULT 0,
  `pessoal` varchar(252) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idtransporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO transportes VALUES("1","4","Transporte Zango 2","Alunos do Zango 2 e 4","2500","6000","Filipe Andre  r
e Pedro Gregor","2023-08-12 20:08:27");
INSERT INTO transportes VALUES("2","4","Transporte Mabor","leva os alunos de Viana","6000","2500","Pedro e António
","2023-08-12 20:08:27");



DROP TABLE IF EXISTS trimestres;

CREATE TABLE `trimestres` (
  `idtrimestre` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `numerodenotas` int(4) NOT NULL,
  `idanolectivo` int(11) NOT NULL,
  `nomedamedia` varchar(6) NOT NULL,
  `arredondarmedia` int(1) NOT NULL DEFAULT 2,
  `percentagemnoanolectivo` double NOT NULL DEFAULT 0.33,
  `posicao` int(1) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idtrimestre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO trimestres VALUES("1","Iº","3","2","MT1","0","0.33","1","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("2","IIº","3","2","MT2","0","0.33","2","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("3","IIIº","3","2","MT3","0","0.33","3","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("5","Iº","2","1","CT1","0","0.33","1","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("6","IIº","2","1","CT2","0","0.33","2","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("7","IIIº","2","1","CT3","0","0.33","3","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("8","Iº","2","3","CT1","0","0.33","1","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("9","IIº","2","3","CT2","0","0.33","2","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("10","IIIº","2","3","CT3","0","0.33","3","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("11","Iº","5","4","MT1","0","0.33","1","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("12","IIº","5","4","MT2","0","0.33","2","2023-08-12 20:08:28");
INSERT INTO trimestres VALUES("13","IIIº","5","4","MT3","0","0.34","3","2023-08-12 20:08:28");



DROP TABLE IF EXISTS turmas;

CREATE TABLE `turmas` (
  `idturma` int(11) NOT NULL AUTO_INCREMENT,
  `idanolectivo` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `idperiodo` int(11) NOT NULL,
  `idciclo` int(11) NOT NULL,
  `idsala` int(11) NOT NULL,
  `propina` double NOT NULL DEFAULT 0,
  `reconfirmacao` double NOT NULL DEFAULT 0,
  `matricula` double NOT NULL DEFAULT 0,
  `idcoordenador` int(11) NOT NULL DEFAULT 0,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idturma`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO turmas VALUES("1","4","Pré-A","1","1","1","4000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("2","4","Pré-B","1","1","5","4000","2000","4000","0","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("3","4","1A","1","1","2","4500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("4","4","1B","1","1","3","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("5","4","2A","1","1","4","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("6","4","2B","1","1","6","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("7","4","3A","1","1","8","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("8","4","3B","1","1","7","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("9","4","4A","1","1","11","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("10","4","4B","1","1","10","4500","2000","4500","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("11","4","4C","2","1","9","4500","2000","4500","0","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("12","4","7A","2","2","2","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("13","4","7B","2","2","3","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("14","4","7C","2","1","4","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("15","4","8A","2","2","8","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("16","4","8B","2","2","7","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("17","4","8C","2","2","12","6000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("18","4","9A","2","2","13","6500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("19","4","9B","2","2","14","6500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("20","4","9C","2","2","9","6500","2000","4000","0","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("21","4","6A","1","1","14","5500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("22","4","6B","1","1","16","5500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("23","4","6C","1","1","12","5500","2000","4000","0","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("24","4","5A","1","1","12","5500","2000","4000","31","2023-12-11 08:55:03");
INSERT INTO turmas VALUES("25","4","5B","2","1","13","5500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("26","4","5C","1","1","9","5500","2000","4000","0","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("27","4","10-C.E.J","2","3","9","7000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("28","4","11-C.E.J","2","3","10","6500","2000","4000","31","2023-10-10 10:19:19");
INSERT INTO turmas VALUES("29","4","12-C.E.J","2","3","16","8000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("30","4","10-C.F.B","2","3","17","7000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("31","4","11-C.F.B","2","3","6","7500","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("32","4","12-C.F.B","2","3","11","8000","2000","4000","31","2023-08-12 20:08:30");
INSERT INTO turmas VALUES("33","2","PreA","2","1","9","45000","4000","10000","0","2023-10-10 10:17:31");
INSERT INTO turmas VALUES("34","5","10-C.E.J","2","1","9","45000","2000","4000","54","2023-10-16 04:33:24");
INSERT INTO turmas VALUES("35","4","10-C.E.J","2","1","9","45000","2000","4000","0","2023-10-16 04:34:08");
INSERT INTO turmas VALUES("36","4","12BA","2","1","9","45000","2000","4000","54","2023-11-16 10:16:07");
INSERT INTO turmas VALUES("37","4","Banana","2","1","9","45000","2000","4000","44","2023-11-19 16:29:52");



