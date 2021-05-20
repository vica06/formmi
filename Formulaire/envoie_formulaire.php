
 
  <?php

$link = new PDO('mysql:host=localhost;dbname=formmi', 'root', '', array
(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));

// // $link = new PDO('mysql:host=sqletud.u-pem.fr;dbname=mduna_db', 'mduna', 'dreamteam2021', array
// (PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
echo $_POST["email"];
if(isset($_POST["email"])){
    $sql = "INSERT INTO formulaire(email, message, nom) VALUES (:courriel, :message, :nom)";
    $req = $link -> prepare($sql);
    $req -> execute(array(":courriel" => $_POST["email"], ":message" => $_POST["message"], ":nom" => $_POST["nom"]));
    $req = null;

    echo "<h1>Votre message à bien été envoyé</h1>";
}
?>
  <a href="">Retour à l'accueil</a>
</body>
</html>