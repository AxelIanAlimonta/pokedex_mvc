<?php

class PokemonesController
{
    private $model;
    private $presenter;

    public function __construct($model, $presenter)
    {
        $this->model = $model;
        $this->presenter = $presenter;
    }

    public function get()
    {

        if (isset($_POST["userLogueado"])) {
            $userLogueado = true;
        } else {
            $userLogueado = false;
        }

        // $userLogueado = false;

        if (isset($_POST["pokemonesBusqueda"])) {
            $pokemonesBusqueda = $_POST["pokemonesBusqueda"];
            $pokemones = $this->model->getPokemonesFiltrados($pokemonesBusqueda);
        } else {
            $pokemones = $this->model->getPokemones();
        }

        $this->presenter->render("view/pokemonesView.mustache", ["pokemones" => $pokemones, "userLogueado" => $userLogueado]);
    }
}
