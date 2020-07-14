<?php
class Database{
 
    // specify your own database credentials
    public $host = "localhost";
    public $db_name = "f11fheux_summit";
    public $username = "f11fheux_summit";
    public $password = "Summit2019?";
    public $conn;
 
    // get the database connection
    public function getConnection(){
 
        $this->conn = null;
 
        try{
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name .";charset=utf8", $this->username, $this->password);
            $this->conn->exec("set names utf8");
	    $this->conn->exec("set client utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->conn;
    }
}
?>