<?php

include_once("controller/PokemonesController.php");

include_once("model/PokemonesModel.php");

include_once("helper/Database.php");
include_once("helper/Router.php");

include_once("helper/Presenter.php");
include_once("helper/MustachePresenter.php");

include_once('vendor/mustache/src/Mustache/Autoloader.php');

class Configuration
{

    // CONTROLLERS

    public static function getPokemonesController()
    {
        return new PokemonesController(self::getPokemonesModel(), self::getPresenter());
    }

    // MODELS

    private static function getPokemonesModel()
    {
        return new PokemonesModel(self::getDatabase());
    }


    // HELPERS
    public static function getDatabase()
    {
        $config = self::getConfig();
        return new Database($config["servername"], $config["username"], $config["password"], $config["dbname"]);
    }

    private static function getConfig()
    {
        return parse_ini_file("config/config.ini");
    }


    public static function getRouter()
    {
        return new Router("getPokemonesController", "get");
    }

    private static function getPresenter()
    {
        return new MustachePresenter("view/template");
    }
}
