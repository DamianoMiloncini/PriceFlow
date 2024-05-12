<?php

namespace app\accessFilters;

use app\core\AccessFilters;

#[\Attribute]
class Home implements AccessFilters {
    public function redirected() {
        // Make sure that the user is logged in
        if (!isset($_SESSION['user_id'])) {
            header('location:/welcome');
            return true;
        }

        // Redirect to the 2FA check page if the secret is set
        // if (isset($_SESSION['secret'])) {
        //     header('location:/User/check2fa');
        //     return true;
        // }

        return false; // Not denied
    }
}
