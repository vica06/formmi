

  <?php
include '../connexion.php';

echo $_POST["email"];
if(isset($_POST["email"])){
    $sql = "INSERT INTO formulaire(email, message, nom) VALUES (:courriel, :message, :nom)";
    $req = $link -> prepare($sql);
    $req -> execute(array(":courriel" => $_POST["email"], ":message" => $_POST["message"], ":nom" => $_POST["nom"]));
    $req = null;

    echo "<h1>Votre message à bien été envoyé</h1>";
}
?>
  <a href="index.html">Retour à l'accueil</a>
</body>
</html>