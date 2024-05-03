<html>
    <head>
        <title>Search Details</title>
    </head>
    <body>
        <div>
            <?php
               // var_dump($data);
                echo "<br>";
             ?>
             <label>Store brand: <?= $data['displayName']['text'] ?></label><br>
             <label>Address: <?= $data['formattedAddress'] ?></label><br>
             <?php  
                //convert boolean
                if($data['currentOpeningHours']['openNow']) {
                    $isOpen = 'Open';
                 }    
                 else {
                    $isOpen = 'Closed';
                 }
                 echo <<<HTML
                 <details>
                 <summary><label>Hours: $isOpen</label></summary>                 
                HTML;
                //get the weekly hours schedule
                foreach($data['currentOpeningHours']["weekdayDescriptions"] as $day) {
                        echo "<label>$day</label><br>";
                }
             ?>
             
             </details>
             <label>Phone Number: +<?=$data['internationalPhoneNumber']?></label><br>
        </div>
    </body>
</html>