<?php

$db = mysqli_connect('localhost','root','','app_doacao');

if(!$db){
    echo 'Conexão com banco de dados falhou';
}
$email = $_POST['email'];
$senha = md5(md5($_POST['senha']));

$sql = "SELECT * FROM usuarios WHERE email ='".$email."' AND senha ='".$senha."' ";
$result =mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count >= 1 ){
    echo json_encode("sucesso");
}else{
    echo json_encode("Erro");
}

?>