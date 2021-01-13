<?php

    try{
        $BDD = new PDO('mysql:host=192.168.65.60; dbname=Azur_Lane; charset=utf8','root', 'root');
    
        $Result = $BDD->query("SELECT * FROM Ships ORDER BY Ship_Name ASC");
    
    }
    catch(Exception $e){
        echo "J'ai eu un problème erreur :".$e->getMessage();
    }

?>