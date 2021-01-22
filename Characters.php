<?php
    session_start();
    require "Functions.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="Img/Icon.png" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <link rel="stylesheet" type="text/css" href="style/menu.css" />
    <link rel="stylesheet" type="text/css" href="style/Characters.css" />
    <title>Azur Lane - Characters List</title>
</head>
<body>

<?php include('menu.php') ?>

<div class="Content">

    <?php 

    $Characters = $BDD->query("SELECT * FROM Ships ORDER BY Ship_Name ASC");

    while($Character = $Characters->fetch() )
    {
    ?>

    <div class="Ships">
        
         <table class="Ships_Infos_Table">

             <tr>
                <td class="Ships_Name">
                    <p><?php echo $Character["Ship_Name"]?></p>
                </td>
            </tr>

            <tr>
                <td class="Ships_Icon" style="background-color: <?php echo Rarity_Color($Character['Ship_Rarity'])?>;">
                    <img class="Ships_Type" src="Img/Type/<?php echo $Character["Ship_Type"]?>.png" alt="Type">
                    <img class="Ships_Img" src="Img/Ships/<?php echo $Character["Ship_Name"]?>.png" alt="Ship">
                </td>
            </tr>

        </table>

    </div>

    <?php
    }
    ?>

</div>
    
</body>
</html>