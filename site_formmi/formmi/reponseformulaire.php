<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Réponse formulaire</title>
    <link rel="stylesheet" href="reponseformulaire.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

    <!-- Kursor v0.1.5 by Luis Daniel Rovira  -->
    <script src="https://cdn.jsdelivr.net/npm/kursor@0.0.14/dist/kursor.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/kursor/dist/kursor.css">
    <link rel="icon" type="image/png" href="photos/64x64.png" sizes="32x32"/> 
</head>

<body>

<?php

include '../connexion.php';
if(isset($_POST["mail"])){
    $sql = "INSERT INTO formulaire(mail, message, nom) VALUES (:courriel, :message, :nom)";
    $req = $link -> prepare($sql);
    $req -> execute(array(":courriel" => $_POST["mail"], ":message" => $_POST["message"], ":nom" => $_POST["nom"]));
    $req = null;
}
?>

    <!-- Logo formmi -->
    <a href="index.html">
        <img class="logo" src="photos/logo.png" alt="Retour à l'accueil">
    </a>

    <!-- Text -->
    <section class="section_text">
        <h3>Merci pour votre message, il a bien été envoyé !</h3>
        <a class="index" href="index.html"><b>Retour à l'acceuil</b></a>
    </section>

    <!-- Footer -->
    <div>
        <a href="https://www.instagram.com/formmi_/?hl=fr" target="_blank">
            <img class="instagram" src="photos/instagram.png" alt="Ouvrir la page Instagram de Formmi">
        </a>
        <a href="credits.html">
            <h2>Crédits</h2>
        </a>
    </div>

</body>
<script TYPE="text/javascript"  SRC="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>

    

    $(document).ready(function(){
        // Curseur 
        new kursor({

        // Ici y'a 5 type de curseur perso je pref le 1, 2 et 4 
        type: 4,                   
        removeDefaultCursor: true,

        // Ici tu change la couleur en rgba obligatoirement
        color: "rgba(0, 0, 0, 0)" 

        });      
    });
    </script>
</html> 
  
 