<?php

    try{
        $BDD = new PDO('mysql:host=192.168.65.60; dbname=Azur_Lane; charset=utf8','root', 'root');
    
        $Result = $BDD->query("SELECT * FROM Ships ORDER BY Ship_Name ASC");
    
    }
    catch(Exception $e){
        echo "J'ai eu un problème erreur :".$e->getMessage();
    }

    function Rarity_Color($Rarity)
    {
        switch ($Rarity) {
            case 'Common':
                echo 'grey' ;
                break;
                case 'Rare':
                    echo 'blue' ;
                    break;
                    case 'Elite':
                        echo 'purple' ;
                        break;
                        case 'Super Rare':
                            echo 'yellow' ;
                            break;
                            case 'Ultra Rare':
                                echo 'green' ;
                                break;
            
            default:
                //none
                break;
        }
    }

?>