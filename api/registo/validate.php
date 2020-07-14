<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../config/database.php';
include_once '../config/core.php';
include_once '../objects/registo.php';
include_once '../shared/sessoes.php';

global $test;


// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare registo object
$registo = new Registo($db);
 
// Get received data for the record to validate

$postparam = file_get_contents('php://input');

if (!empty($postparam)) { 
    $POSTmsg_arr = explode(" ", $postparam);
    
    // set email and code property of record to read 
    $registo->email = $POSTmsg_arr[0]; 
    //($POSTmsg_arr[0] != null) ? $POSTmsg_arr[0] : die();
    $registo->codigo = $POSTmsg_arr[1]; 
    //($POSTmsg_arr[1] != null) ? $POSTmsg_arr[1] : die();
    if (isset($POSTmsg_arr[2])) {
       $sessao_activa = $POSTmsg_arr[2]; 
        //($POSTmsg_arr[1] != null) ? $POSTmsg_arr[1] : die();  
    }
} else {
    $registo->email = $_GET["email"];
    $registo->codigo = $_GET["codigo"];
    if (array_key_exists("sessao",$_GET)) {
         $sessao_activa = $_GET["sessao"];
    }
}



//AQUI VAI TER QUE LIMPAR AS STRINGS 

// Ler detalhes do registo a validar
$registo->validateOne("V");

// Registo Existente e codigo válido
if ($registo->nome != NULL && $registo->status != 0 ) {  
    
    // set response code - 200 OK
    http_response_code(200); 
    
    // Trata o status do registo
    $sessao = (isset($sessao_activa) ? $sessao_activa : sessao());
    $checked = checked($registo, $sessao);
    
    // Está registado sem loggin!
    if ( !($checked) ) {  
            
        echo "1";          
        
        // Muda o status para 2 (logged)
        $registo->status = "2";
        checkin_sessao($registo, $sessao);
            
        // update the registo
        if($registo->update()){
            // set response code - 200 ok
            // http_response_code(200);

            // tell the user
            // echo json_encode(array("message" => "Registo was updated."));
        }
        // if unable to update the registo, tell the user
        else{
            // set response code - 503 service unavailable
            // http_response_code(503);
            // tell the user
            // echo json_encode(array("message" => "Unable to update registo."));
        }
        
    // Está registado e já fez loggin    
    } elseif ($checked) { 
        echo "2"; 
        if (isset($sessao_activa)) {
            $count=checkin_sessao($registo, $sessao);
            $registo->status = ($count > 0 ? "2" : "1");
            
            if($registo->update()){
            // set response code - 200 ok
            // http_response_code(200);

            //tell the user
            //echo json_encode(array("message" => "Registo was updated."));
            }
            // if unable to update the registo, tell the user
            else{
                // set response code - 503 service unavailable
                // http_response_code(503);
                // tell the user
                // echo json_encode(array("message" => "Unable to update registo."));
            }
            
        }
    }  
    
}
// Registo Inexistente ou codigo inválido
else
{
    // set response code - 404 Not found
    // http_response_code(404);
    
    echo "0";  //Não está registado ou código inválido
}



function checked($registo, $sessao) {

    switch ($sessao) {
        case 1:
            $value = ($registo->S1 != 0);
            break;
        case 2:
            $value = ($registo->S2 != 0);
            break;
        case 3:
            $value = ($registo->S3 != 0);
            break;
        case 4:
            $value = ($registo->S4 != 0);
            break;
        default:
            $value = FALSE;
            break;
            
    }
    return $value;
}

function checkin_sessao($registo, $sessao) {
    
    switch ($sessao) {
    case 1:
        $registo->S1 = (TRUE xor $registo->S1) ;
        break;
    case 2:
        $registo->S2 = (TRUE xor $registo->S2);
        break;
    case 3:
        $registo->S3 = (TRUE xor $registo->S3);
        break;
    case 4:
        $registo->S4 = (TRUE xor $registo->S4);                          
        break;       
    }    

    return ($registo->S1 + $registo->S2 + $registo->S3 + $registo->S4);
    
}

?>