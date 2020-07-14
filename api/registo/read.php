<!DOCTYPE txt/html>
<html>
<header>
    <title>Summit 1.0 V.N.Gaia</title>
    <meta charset="utf-8">
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./read_style.css">
    <!-- <meta http-equiv="refresh" content="3"> -->
    
    <script>
        function load() {
            location.reload();
            return;
        }
    
    </script>
</header>
<body>

<?php
    
    //$page = $_SERVER['PHP_SELF'];
    //$sec = "5";
    //header("Refresh: $sec; url=$page");
    
    // include database and object files
    include_once '../config/database.php';
    include_once '../config/core.php';
    include_once '../objects/registo.php';
    include_once '../shared/sessoes.php';
    
?>

<div class="container">
    <div class="titulo">
        <div class="1">
            <h1>Participantes</h1>
        </div>
        <div class="2">
            <?php
                $sessao_activa= sessao();
                date_default_timezone_set('Europe/Lisbon');
                echo "<span>" . date('h:i:sa') .  "</span>"; 
                echo "<span><h1>" .$sessao_activa . "</h1></span>";
            ?>      
            <iframe class="left" src=""  name="registo_msg" frameborder="0" style="display:none">

            </iframe>
        </div>
    </div>
    <div class="main">

        
        
        
        <?php

        // instantiate database and registo object
        $database = new Database();
        $db = $database->getConnection();


        // initialize object
        $registo = new Registo($db);

        // read registos will be here
        // query registos
        $stmt = $registo->read();
        $num = $stmt->rowCount();

        // check if more than 0 record found
        if($num>0){

            // products array
            $registo_arr=array();
            $registo_arr["records"]=array();

            // retrieve our table contents
            // fetch() is faster than fetchAll()
            // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                // extract row
                // this will make $row['name'] to
                // just $name only
                extract($row);

                // Lê as categorias para a linha        

                $registo_cat = array();
                $stmt_cat = $registo->read_categorias($id);
                $num = $stmt_cat->rowCount();


                if ($num>0) {   
                    while ($row = $stmt_cat->fetch(PDO::FETCH_ASSOC)){
                        // extract row
                        // this will make $row['name'] to
                        // just $name only
                        extract($row);
                        array_push($registo_cat,$name);

                    }

                }

                $registo_item=array(
                    "id" => $id,
                    "email" => $email,
                    "nome" => $nome,
                    "apelido" => $apelido,
                    "status" => $status,
                    "codigo" => $codigo,
                    "cod_confirm" => $cod_confirm, 
                    "consentimento" => $consentimento,
                    "datareg" => $datareg,
                    "categorias" => $registo_cat,
                    "S1" => $S1,
                    "S2" => $S2,
                    "S3" => $S3,
                    "S4" => $S4
                );


                array_push($registo_arr["records"], $registo_item);
            }

            // set response code - 200 OK
            http_response_code(200);

            echo "<table id='controlo' align=center>";
            
            echo "<tr>";
            // echo "<th>" . "Id"              . "</th>";
            echo "<th>" . "Num."            . "</th>";
            echo "<th>" . "Nome"            . "</th>";
            echo "<th>" . "Apelido"         . "</th>"; 
            echo "<th>" . "email"           . "</th>";
            echo "<th>" . "Status"          . "</th>"; 
            // echo "<th>" . "Codigo"          . "</th>"; 
            // echo "<th>" . "Cod.Confirmação" . "</th>"; 
            //echo "<th>" . "Consent."        . "</th>";
            //echo "<th>" . "Datareg"         . "</th>";
            echo "<th>" . " "       . "</th>";
            echo "<th>" . "Confirmar"       . "</th>";
            echo "<th>" . "Inscrição"        . "</th>";
            echo "<th>" . "CheckIn"         . "</th>";

            echo "</tr>";
            
            echo "<tr><td colspan=8>" . ' ' . "</td></tr>";
            
            // show products data in json format
            //echo json_encode($registo_arr);
            $count = 0;
            foreach ($registo_arr as $linha) {
                
                foreach ($linha as $campo) {
                    ++$count;
                    $p_confirma = "email=" . $campo["email"] . "&" . "confirma=" . $campo["cod_confirm"];
                    $p_checkin =  "email=" . $campo["email"] . "&" . "codigo="   . $campo["codigo"];
                    $p_cancela =  "email=" . $campo["email"] . "&" . "confirma=" . $campo["cod_confirm"];

                    if ($campo["status"]==0)    
                        $botao_confirma = "<a href='". $external_url . "registo/confirma.php?" . $p_confirma . "'  class=button target='registo_msg'>Confirma</a>";
                    elseif ($campo["status"]==1)
                         $botao_confirma = "Confirmado";
                    else
                        $botao_confirma = " ";

                    if ($campo["status"]<2)
                        $botao_cancela  = "<a href='". $external_url . "registo/cancela.php?"  . $p_cancela . "'  class=button target='registo_msg'>Anula</a>";
                    else
                        $botao_cancela  = " ";   
                    
   
                    if ($campo["status"]>0)    
                        $botao_checkin  = "<a href='". $external_url . "registo/validate.php?" . $p_checkin . "'  class=button target='registo_msg'>CheckIn</a>";
                    else
                        $botao_checkin  = "Não Confirmado";

                                 

                    $botao_refresh = "<a href='". $external_url . "registo/read.php' class=button target='_self'>Refresh</a>";

                    echo "<tr id='participante'>";

                    // echo "<td>"     . $campo["id"]              . "</td>"; 
                    
                    echo "<td>"     . $count              . "</td>"; 
                    echo "<td><b>"  . $campo["nome"]         . "</b></td>";
                    echo "<td><b>"  . $campo["apelido"]      . "</b></td>"; 
                    echo "<td><span class='cat'>"     . $campo["email"]           . "</span></td>";
                    echo "<td>"     . $campo["status"]          . "</td>"; 
                    // echo "<td>"     . $campo["codigo"]          . "</td>"; 
                    // echo "<td>"     . $campo["cod_confirm"]     . "</td>"; 
                    // echo "<td>"     . $campo["consentimento"]   . "</td>";
                    // echo "<td>"     . $campo["datareg"]         . "</td>";

                    echo "<td>"     . " "  . "</td>";
                    echo "<td>"     . $botao_confirma  . "</td>";
                    echo "<td>"     . $botao_cancela . "</td>";
                    echo "<td>"     . $botao_checkin. "</td>";

                    echo "</tr>";


                    (empty($campo["categorias"]) ? $cat = "Sem seleção" : $cat = ""  );
                    foreach ($campo["categorias"] as $nome_cat) {
                            $cat .= $nome_cat . ",";
                    }

                    $a_sessao = array($campo['S1'],$campo['S2'],$campo['S3'],$campo['S4']);
                    $sessoes  = ""; $n=0;
                    foreach ($a_sessao as $s) {
                            $n++;
                            $p_checkin =  "email="  . $campo["email"] . "&" 
                                            . "codigo=" . $campo["codigo"] ."&" 
                                            . "sessao=" . $n;
                            $sessoes  .= 
                                "<a href='". $external_url . "registo/validate.php?" . $p_checkin . "' onclick='load()' id='botao' class='botao " . ($s ? ", checkin'" :"'") . " target='registo_msg'> S" .$n. "</a>";
                            /*
                            if ($s) {
                                $sessoes  .= "<span class='botao " . ($s ? ", checkin'" :"'") . " > S" .$n." </span>";            
                            } else {
                                $sessoes  .= "<span class='botao " . ($s ? ", checkin'" :"'") . " > S" .$n." </span>";
                            }
                            */
                            
                    }
                    
                    
                    
                    
                    echo "</tr>";
                    echo "<td align=right><span class='cat'>Id - " . $campo["id"] . "</span></td>";
                    echo "<td align=right><span class='cat'>" . ($campo["consentimento"]==1 ? 'Consentimento ok' : '-') . "</span></td>";
                    echo "<td align=right><span class='cat'>Data: " . $campo["datareg"] . "</span></td>";
                    echo "<td align=right colspan=2><span class='cat'>Codigos: " . $campo["codigo"] ." / ". $campo["cod_confirm"] . "</span></td>";
                    echo "<td colspan=3> </td>";
                    echo "<td><div style='width:100px'> ".$sessoes."</div> </td>";
                    echo "</tr>";


                    echo "<tr>";
                    echo "<td colspan=5 align=right><span class='cat'>" . $cat . "</span></td>";
                    echo "<td colspan=4></td>";
                    echo "</tr>";

                } 
                echo "<tr><td colspan=9> </td></td>";
                echo "<tr>";
                echo "<td collspan=9 align=right><div>" . $botao_refresh . "</div></td>";
                echo "</tr>";
                echo "</table>";   
            }

        }

        // no records found will be here
        else{

            // set response code - 404 Not found
            http_response_code(404);

            // tell the user no products found
            echo json_encode(
                array("message" => "No registos found.")
            );
        }

        ?>
    </div>
</div> 
    
</body>
</html>