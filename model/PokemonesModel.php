<?php

class PokemonesModel
{
    private $database;

    public function __construct($database)
    {
        $this->database = $database;
    }

    public function getPokemones()
    {
        return $this->database->query("SELECT * FROM POKEMON");
    }

    public function getPokemonesFiltrados($pokemonesRequerido){
        return $this->database->query("SELECT * FROM pokemon 
        WHERE imagen LIKE '%" . $pokemonesRequerido . "%'
        OR tipo LIKE '%" . $pokemonesRequerido . "%'
        OR numero = '" . $pokemonesRequerido . "'");
    }

    public function deletePokemones($id)
    {
        $this->database->execute("DELETE FROM pokemon WHERE id = $id");
    }

    public function addPokemones($nombre, $tipo, $numero, $descripcion)
    {
        
        $this->database->execute("INSERT INTO pokemon (imagen, tipo, numero, descripcion) VALUES ('$nombre', '$tipo', '$numero', '$descripcion')");
    }

    public function updatePokemones($id,$nombre, $tipo, $numero, $descripcion)
    {
        $this->database->execute("UPDATE pokemon
        SET imagen = '$nombre',
            tipo = '$tipo',
            numero = '$numero',
            descripcion = '$descripcion'
        WHERE id = '$id'");
    }
}