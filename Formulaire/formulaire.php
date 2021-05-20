<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire</title>
    <link rel="stylesheet" href="https://use.typekit.net/nuk4awh.css">
    <link href="style copie.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@200;300;400&display=swap" rel="stylesheet">
</head>

<body>

    <img class="logo" src="photos/logo.png">
    <div class="title">
        <h1> Nous contacter</h1>
    </div>
    <div class="conteneur">
        <div class="barre1">
            <a href="#">
                <p class="nom_barre">L'équipe</p>
            </a>
        </div>
        <div class="barre2">
            <a href="#">
                <p class="nom_barre">Formation</p>
            </a>
        </div>
    </div>
    <div class="form">
        <h2> Besoin d'être éclairer ? Rassuré ? Nous sommes là<br> pour vous : </h2>

        <img class="img_contact" src="photos/contact.png">

        <form method="POST" action="envoie_formulaire.php" class="section_form">

            <p>
                <textarea id="nom" name="nom" rows="5" cols="40" placeholder="Nom & Prénom"></textarea>
                <!-- <label class="label_name" for="name">Nom et Prénom<br></label>
                    <input type="text" id="name"> -->
            </p><br>
            <p>
                <textarea id="email" name="email" rows="5" cols="40" placeholder="Mail"></textarea>
                <!-- <label class="label_mail" for="mail">Mail</label>
                    <input type="email" id="mail"> -->
            </p><br>
            <p>

                <textarea id="message" name="message" rows="5" cols="40" placeholder="Message"></textarea>
            </p>
            <input class="button_form" type="submit" value="Envoyer">
        </form>
    </div>
    <aside class="contact">
        <p> 2 rue Albert Einstein, Champs-Sur-Marne</p>
        <p>01 60 95 75 00</p>
        <p>formmi@gmail.com</p>
    </aside>


</body>

</html>