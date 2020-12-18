<?php

namespace MyApp;

use MyApp\Models\Users;

class Auth
{
    public static function getBasket()
    {
        self::initBasket();

        return $_SESSION['basket'];
    }

    public static function addToBasket($id)
    {
        self::initBasket();

        $_SESSION['basket']['count']++;
        $_SESSION['basket']['goods'][$id]++;
    }

    public static function clearBasket()
    {
        self::initBasket(true);
    }

    private static function initBasket($force = false)
    {
        if ($force || empty($_SESSION['basket'])) {
            $_SESSION['basket'] = [
                'count' => 0,
                'goods' => [],
            ];
        }
    }

    public static function getUser()
    {
        return $_SESSION['user'];
    }

    public static function login($login)
    {
        $_SESSION['user'] = Users::get($login);
    }

    public static function logout()
    {
        $_SESSION['user'] = null;
        self::clearBasket();
    }
}
