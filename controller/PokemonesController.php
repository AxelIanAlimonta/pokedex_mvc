<?php

class PokemonesController
{
    private $model;
    private $presenter;

    public function __construct($model, $presenter)
    {
        $this->model = $model;
        $this->presenter = $presenter;
        if (!empty($resultado)) {
            $_SESSION['userLogueado'] = true;
            // Otros pasos después de la autenticación exitosa
        }
    }

    public function get()
    {
        $userLogueado = isset($_SESSION['userLogueado']) ? $_SESSION['userLogueado'] : false;

        if (isset($_POST["pokemonesBusqueda"])) {
            $pokemonesBusqueda = $_POST["pokemonesBusqueda"];
            $pokemones = $this->model->getPokemonesFiltrados($pokemonesBusqueda);
        } else {
            $pokemones = $this->model->getPokemones();
        }

        $this->presenter->render("view/pokemonesView.mustache", ["pokemones" => $pokemones, "userLogueado" => $userLogueado]);
    }

    public function validarUsuario()
    {
        $error = false;
        $userLogueado = false;

        // Verificar usuario y contraseña
        if (isset($_POST['usuario']) && isset($_POST['password'])) {
            $usuario = $_POST['usuario'];
            $pass = $_POST['password'];
            $resultado = $this->model->getUsuario($usuario, $pass);

            // Autenticación exitosa
            if (!empty($resultado)) {
                $_SESSION['userLogueado'] = true;
                $userLogueado = true;
            } else {
                $error = true;
            }
        } else {
            $error = true;
        }

        // Obtener los Pokémon
        $pokemones = $this->model->getPokemones();

        // Renderizar la vista
        $this->presenter->render("view/pokemonesView.mustache", [
            "userLogueado" => $userLogueado,
            "error" => $error,
            "pokemones" => $pokemones
        ]);
    }

    public function add()
    {
        $this->presenter->render("view/agregarPokemonView.mustache");
    }

    public function procesarAdd()
    {
        $nombre = $_POST["nombre"];
        $tipo = $_POST["tipo"];
        $numero = $_POST["numero"];
        $descripcion = $_POST["descripcion"];
        $this->model->addPokemones($nombre, $tipo, $numero, $descripcion);
        $pokemones = $this->model->getPokemones();
        $this->presenter->render("view/pokemonesView.mustache", [
            "userLogueado" => true,
            "pokemones" => $pokemones
        ]);
        exit();
    }

    public function delete()
    {
        $id = $_GET["id"];
        $this->model->deletePokemones($id);

        $pokemones = $this->model->getPokemones();
        $this->presenter->render("view/pokemonesView.mustache", [
            "userLogueado" => true,
            "pokemones" => $pokemones
        ]);

        exit();
    }


    public function modificar()
    {
        $userLogueado = true;
        $id = $_GET["id"];
        $nombre = $_GET["nombre"];
        $tipo = $_GET["tipo"];
        $descripcion = $_GET["descripcion"];
        $numero = $_GET["numero"];


        $this->presenter->render("view/modificarPokemon.mustache", ["userLogueado" => $userLogueado, "nombre" => $nombre, "id" => $id, "tipo" => $tipo, "numero" => $numero, "descripcion" => $descripcion]);
    }


    public function procesarModificar()
    {

        $id = $_POST["id"];
        $nombre = $_POST["nombre"];
        $tipo = $_POST["tipo"];
        $numero = $_POST["numero"];
        $descripcion = $_POST["descripcion"];
        $this->model->updatePokemones($id, $nombre, $tipo, $numero, $descripcion);

        $pokemones = $this->model->getPokemones();
        $this->presenter->render("view/pokemonesView.mustache", [
            "userLogueado" => true,
            "pokemones" => $pokemones
        ]);
        exit();
    }


    public function infoPokemon()
    {
        $numero = $_GET["numero"];
        $nombre = $_GET["nombre"];
        $tipo = $_GET["tipo"];
        $descripcion = $_GET["descripcion"];

        $this->presenter->render("view/infoPokemonView.mustache", ["nombre" => $nombre, "tipo" => $tipo, "descripcion" => $descripcion, "numero" => $numero]);
    }
}
