<?php

function sessao() {
    global $test;
    
    
    if       ( date("d")< 11 ) {
        $sessao = 1;
    } elseif ( date("d")>12 ) {
        $sessao = 4;
    } else {
        $sessao = ( date("d") == 11 ? 0: 2 ) + ( date("G") <=13  ? 1 : 2);     
    }  

    //if ($test) { 
    //    $sessao = 2;
    //}
    
    return $sessao;
}
?>