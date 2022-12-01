<?php
$db = mysqli_connect('localhost','root','','app_doacao');

if(!$db){
    echo 'Conexão com banco de dados falhou';
}

$cpf= $_POST['cpf'];
$nome= $_POST['nome'];
$email= $_POST['email'];
$cep= $_POST['cep'];
$endereco= $_POST['endereco'];
$cidade= $_POST['cidade'];
$estado= $_POST['estado'];
$telefone= $_POST['telefone'];
$senha= md5(md5($_POST['senha']));

$sql_code = "SELECT id FROM usuarios WHERE email = '$email'";
$sql_query = $db->query($sql_code) or die ($db->error);
$dado = $sql_query->fetch_assoc();
$total = $sql_query->num_rows;
       
             


if($total != 0){
echo json_encode("Este usuario ja existe no sistema!");


}else{

$sql_cadastra = mysqli_query($db,"INSERT INTO usuarios (cpf, nome, email, cep, endereco, cidade, estado, telefone, senha) VALUES ('$cpf','$nome','$email','$cep','$endereco','$cidade','$estado','$telefone','$senha')");
if($sql_cadastra){

   echo json_encode("sucesso");

}else{
    echo json_encode("Não foi possivel cadastrar o usuário!");
}
}

?> 