<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire</title>
    <link rel="stylesheet" href="https://use.typekit.net/nuk4awh.css">
    <link href="formulaire.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

    <!-- Kursor v0.1.5 by Luis Daniel Rovira  -->
    <script src="https://cdn.jsdelivr.net/npm/kursor@0.0.14/dist/kursor.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/kursor/dist/kursor.css">
    <link rel="icon" type="image/png" href="photos/64x64.png" sizes="32x32"/>
</head>

<body>
     <!-- logo formmi -->
     <a href="index.html">
        <img class="logo" src="photos/logo.png">
    </a>

    <!-- Title -->
    <div>
        <h1 class="titre1">Contactez-nous !</h1>
        <h1 class="titre2">Contactez-nous !</h1>
    </div>

    <!-- Navigation bar-->
    <nav class="conteneur">
        <div class=" barre barre2">
            <a href="formations.html">
                <p class="nom_barre">Formations</p>
            </a>
        </div>
        <div class=" barre barre3">
            <a href="../Page_contact/contact.html">
                <p class="nom_barre">L'équipe</p>
            </a>
        </div>
    </nav>

    <!-- Formulaire -->
    <section>
        <h2>Besoin d’être éclairé ? D'être rassurés ? Envie de nous présenter votre formation<br> en participant à nos
            podcasts ?<br>
            Nous sommes là pour vous écouter :<br>
        </h2>

        <form action="reponseformulaire.php" method="post">

<!-- Name -->
<p>
    <label class="label_name" for="name"></label>
    <input type="text" name="nom" id="name" placeholder="Nom et Prénom">
</p><br>

<!-- Email -->
<p>
    <label class="label_mail" for="mail"></label>
    <input type="email" name="mail" id="mail" placeholder="Mail">
</p><br>

<!-- Message -->
<p>
    <textarea id="message" name="message" placeholder="Dites nous tout ..."></textarea>
</p><br>

<!-- Button send -->
<label for="envoie"></label>
<input class="button_form" name="envoie" type="submit" id="envoie" value="ENVOYER">

        </form>
    </section>

    <!-- Social media -->
    <img class="img_contact" src="photos/contact.png">

    <aside class="contact">
        <div>
            <p>2 rue Albert Einstein, Champs-Sur-Marne</p>
            <p>01 60 95 75 00</p>
            <p><a class="underline" href="mailto:formmi@gmail.com">formmi@gmail.com</a></p>
        </div>

        <div class="reseaux">
            <a href="https://www.linkedin.com/company/76452080/admin/" target="_blank"><img class="img_reseaux"
                    src="photos/linkedin.png">
            </a>
            <a href="https://www.instagram.com/formmi_/?hl=fr" target="_blank"><img class="img_reseaux"
                    src="photos/insta.png">
            </a>
        </div>
    </aside>
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
</body>

</html>