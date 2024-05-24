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
        if(isset($_POST['usuario'])&&isset($_POST['password'])){
            $usuario = $_POST['usuario'];
            $pass =$_POST['password'];
            $resultado = $this->model->getUsuario($usuario, $pass);
        }
        if(!empty($resultado)){
            $userLogueado = true;
            $error = false;
        }else{
            $userLogueado = false;
            $error = true;
        }
        $this->presenter->render("view/pokemonesView.mustache",["userLogueado" => $userLogueado, "error"=> $error]);
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
        header("location:/mvc/index.php");
        exit();
    }

    public function delete()
    {
        $id = $_GET["id"];
        $this->model->deletePokemones($id);
        header("location:/mvc/index.php");
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
        header("location:/mvc/index.php");
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
