<html>
    <head>
        <title><?= __('Search Details') ?></title>
        <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }
    </style>
    </head>
    <body>
        <div class = "container">
             <label><?= __('Store brand') ?>: <?= $data['displayName']['text'] ?></label><br>
             <label><?= __('Address') ?>: <?= $data['formattedAddress'] ?></label><br>
             <?php  
                //convert boolean
                if($data['currentOpeningHours']['openNow']) {
                    $isOpen = 'Open';
                 }    
                 else {
                    $isOpen = 'Closed';
                 }
                 echo '
                 <details>
                 <summary><label> ' .  __('Hours') . ': $isOpen</label></summary> 
                 ';                
                //get the weekly hours schedule
                foreach($data['currentOpeningHours']["weekdayDescriptions"] as $day) {
                        echo "<label>$day</label><br>";
                }
             ?>
             
             </details>
             <label><?= __('Phone Number') ?>: +<?=$data['internationalPhoneNumber']?></label><br>
        </div>
    </body>
</html>