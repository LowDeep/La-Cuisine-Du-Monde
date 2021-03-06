<?php

class Modification_Controller{
    
    public function confirmerMDP(){
        if(  
             !empty($_POST['LastMDP']) and
             !empty($_POST['NewMdp']) and
             !empty($_POST['confirmationNewMdp']) and
             !empty($_POST['Email']) and
             !empty($_POST['confirmationEmail']) 
        ){
           require_once("./Modification/Model/Modification_Model.php");
            $model = new Modification_Model();

            //Si la mdp entré pas l'utilisateur est egal à celle de la BDD, on peux changer les mdp
            if($model->confirmerMDP($_POST['LastMDP']) == 1){
                $this->changerInfo();
            }else{
                echo "<script>
                alert('Mot De passe mauvaise');
                document.location.replace('modifierInfo.php');
                </script>";
            }
        }else{
            echo "<script>
                
                alert('champs vides');
                    document.location.replace('modifierInfo.php');

                
                </script>";
        }
    }
    
    public function afficherForm(){
        require_once("./Modification/View/Modification.phtml");
    }
    
    public function changerInfo(){
        $newMdp = $_POST['NewMdp'];
        $confirmationNewMdp = $_POST['confirmationNewMdp'];
        $nouveauEmail = $_POST['Email'];
        $confirmationEmail = $_POST['confirmationEmail'];
        
        //Si le MDP or email est differents a chaque confirmation
        if(strcmp($confirmationNewMdp,$newMdp) !== 0 ||
            strcmp($nouveauEmail,$confirmationEmail) !==0
          ){
            
            echo '<script>
                alert("Les Mot de passe ou les emails sont incorrects");
            </script>';
        }else{
            require_once("./Modification/Model/Modification_Model.php");
            $model = new Modification_Model();
            $model->changerInfo($newMdp,$nouveauEmail);
        }
        
    }
}


?>