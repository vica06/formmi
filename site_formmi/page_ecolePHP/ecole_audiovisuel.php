<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formmi Audiovisuel</title>
    <link href="style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;500&display=swap" rel="stylesheet">
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

    <!-- Kursor v0.1.5 by Luis Daniel Rovira  -->
    <script src="https://cdn.jsdelivr.net/npm/kursor@0.0.14/dist/kursor.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/kursor/dist/kursor.css">
    <link rel="icon" type="image/png" href="images/logo-64x64.png" sizes="32x32"/> 


    <?php 
    include '../connexion.php';
    
     $sql = "SELECT * FROM ecole WHERE id >8 AND id < 13";
     $req = $link -> prepare($sql);
     $req -> execute();
     
     
     while($data = $req -> fetch()){
       // On affiche chaque résultat sous forme d'un item de la liste
      ?>


       



       <div class="bodyv2">
       <nav class=<?php echo $data['affichage']; ?>>
           <div class="container_text">
               <article class="txt_titre">
               <h1 class=<?php echo $data['class_h1']; ?>><?php echo $data['nom']; ?> </h1>
               <p class="text"><?php echo $data['description'] ?> 
               <br><br>Retrouver l'école <a class=<?php echo $data['class_ici']; ?> href="<?php echo $data['lien_ecole']; ?>" >ici</a>
                   
               </p></div></article>
               <article class="groupe_carte">
               <img id = <?php echo $data['carte']; ?> class="carte_com" src= <?php echo $data['visuel_recto']; ?> >
               <img id = <?php echo $data['dos_carte']; ?> class="carte_comdos" src= <?php echo $data['visuel_verso']; ?>>
   

               <?php if($data['balle']!= "" ){?>
                    <div class=<?php echo $data['balle']; ?>>
                    <p>Podcast en préparation ...</p>
                   <div class="container_ball">
                     <div class="ball_pink"></div>
                     <div class="ball_blue"></div>
                     <div class="ball_yellow"></div>
                   </div>
                 </div>
              <?php } else{?>
                <div class=<?php echo $data['div_podcast']; ?>>

                <p class="podcast">Podcast</p>
                    <img id=<?php echo $data['play']; ?> src="images/play_pause/play-rose.png" alt="">
                    <img id=<?php echo $data['pause']; ?> src="images/play_pause/pause-rose.png" alt="">
                    <audio id="<?php echo $data['src_musique']; ?>" src="<?php echo $data['Podcast']; ?>"></audio>

                </div>
            <?php   } ?>

          
                  
              </article>
           </div>

              







<?php 

     }
     $req = null;
    
    


    ?>



</head>
<body>

    

    <header class="barretop"> 
        
        <a href="../formmi/index.html"><img class="logo" src="images/FORMMI-logo-color.png"></a>

        <div class="boite">
            <div class="burgermenu bg1"></div>
            <div class="burgermenu bg2"></div>
            <div class="burgermenu bg3"></div>
        </div>

        <nav class="nav" id="nav">
            <ul>
              <li class="menu"><a href="../formmi/formations.html">Formation</a></li>
              <li class="menu3"><a href="../Page_contact/contact.html">L'équipe</a></li>
              <li class="menu4"><a href="../formmi/formulaire.html">Contact</a></li>
            </ul>
        </nav> 
    </header> 
    




    
    
</body>
</html>

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

                    $(".menu").hide();
                    $(".menu3").hide();
                    $(".menu4").hide();
                    $(".boite").click(function(event){
                    $(".menu").toggle(1000);
                    $(".menu3").toggle(1000);
                    $(".menu4").toggle(1000);
              
                })

                $("#carte1dos").hide();
                $('#carte1').click(function(event){
                $("#carte1").hide();
                $("#carte1dos").show();
            })
                $("#carte2dos").hide();
                $("#carte2").click(function(event){
                $("#carte2").hide();
                $("#carte2dos").show();
            })
                $("#carte3dos").hide();
                $("#carte3").click(function(event){
                $("#carte3").hide();
                $("#carte3dos").show();
            })
                $("#carte4dos").hide();
                $("#carte4").click(function(event){
                $("#carte4").hide();
                $("#carte4dos").show();
            })
       
            $('#carte1dos').click(function(event){
                $("#carte1dos").hide();
                $("#carte1").show();
            })
            $('#carte2dos').click(function(event){
                $("#carte2dos").hide();
                $("#carte2").show();
            })
            $('#carte3dos').click(function(event){
                $("#carte3dos").hide();
                $("#carte3").show();
            })
            $('#carte4dos').click(function(event){
                $("#carte4dos").hide();
                $("#carte4").show();
            })

        
            $('#play1').click(function () {
                $('#musique1')[0].play();
                $(this).hide();
                $('#pause1').show();
            });

            $('#pause1').click(function () {
                $('#musique1')[0].pause();
                $(this).hide();
                $('#play1').show();
            });

            
            $('#play2').click(function () {
                $('#musique2')[0].play();
                $(this).hide();
                $('#pause2').show();
            });

            $('#pause2').click(function () {
                $('#musique2')[0].pause();
                $(this).hide();
                $('#play2').show();
            });
  
          

                  
    });

        </script>