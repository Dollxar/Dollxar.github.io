<?php
    
    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];


    //valida pregunta 1 1. ¿En que años fue la epoca victoriana?
    echo "<h3>1. ¿En que años fue la epoca victoriana? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = 1837-1901</h5>";
    if($pregunta1 == "opcion1"){
        $aciertos++;
        echo "<img src='correcto.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 fue el ultimo emperador de Francia.
    echo "<h3>2. _____________ fue el ultimo emperador de Francia.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Napoleon</h5>";
    if(strtoupper($pregunta2) == "NAPOLEON"){
        $aciertos++;
        echo "<img src='correcto.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - Quienes fueron los lideres autoritarios durante la segunda guerra mundial
    echo "<h3>3. Fueron lideres autoritarios durante la segunda guerra mundial (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Stalin, Hirohito</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Stalin" || $pregunta3[$i] == "Hirohito"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcto.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿Quien capturo berlin durante el final de la segunda guerra mundial?

        echo "<h3>4. ¿Quien capturo berlin durante el final de la segunda guerra mundial?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = ".'$'."URSS</h5>";
        if($pregunta4 == '$'."URSS"){
            $aciertos++;
            echo "<img src='correcto.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Pregunta 5 ¿Cuál de las siguientes afirmaciones sobre la Revolución Rusa de 1917 es correcta?
    echo "<h3>5. ¿Cuál de las siguientes afirmaciones sobre la Revolución Rusa de 1917 es correcta?";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Lenin lideró el derrocamiento del gobierno provisional en octubre</h5>";
    if ($pregunta5 == "lenin") {
        $aciertos++;
        echo '<img src="correcto.png" width="50px"><hr>';
    } else {
        echo '<img src="incorrecto.png" width="50px"><hr>';
    }
    //------FIN de la pregunta 5 ------------------

    //Pregunta 6 ¿Qué tratado puso fin a la Primera Guerra Mundial para Alemania?
    echo "<h3>6. ¿Qué tratado puso fin a la Primera Guerra Mundial para Alemania?";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Tratado de Versalles</h5>";
    if ($pregunta6 == "versalles") {
        $aciertos++;
        echo '<img src="correcto.png" width="50px"><hr>';
    } else {
        echo '<img src="incorrecto.png" width="50px"><hr>';
    }
     //------FIN de la pregunta 6 ------------------

     // Pregunta 7 ¿Cuál fue el principal objetivo de la Revolución Mexicana de 1910?
     echo "<h3> 7. ¿Cuál fue el principal objetivo de la Revolución Mexicana de 1910?";
     echo "<h5>Repuesta seleccionada  ".implode(",", $pregunta7)." ---- Correcta = Buscó la reforma agraria,Derrocó a Porfirio Díaz,Fomentó el nacionalismo cultural</h5>";
     $p7_respuestas_correctas = 0;
     if(count($pregunta7) == 3){
        for($i=0; $i<count($pregunta7); $i++){
            if($pregunta7[$i] == "reforma" || $pregunta7[$i] == "derrocamiento" || $pregunta7[$i] == "nacionalismo"){
                $p7_respuestas_correctas ++;
            }
        }
        if($p7_respuestas_correctas == 3){
            $aciertos++;
            echo "<img src='correcto.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
     //---------- FIN DE LA PREGUNTA 7 ------------------
     echo "<h3> 8.¿Cuáles de los siguientes eventos ocurrieron en el siglo XIX o antes?";
     echo "<h5>Repuesta seleccionada  ".implode(",", $pregunta8)." ---- Correcta = Independencia de México (1810),Revolución Francesa (1789),Guerra Civil Americana (1861-1865)</h5>";
     $p8_respuestas_correctas = 0;  
     if(count($pregunta8) == 3){
        for($i=0; $i<count($pregunta8); $i++){
            if($pregunta8[$i] == "independencia" || $pregunta8[$i] == "revolucion" || $pregunta8[$i] == "guerra"){
                $p8_respuestas_correctas ++;
            }
        }
        if($p7_respuestas_correctas == 3){
            $aciertos++;
            echo "<img src='correcto.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    //-------------------------- Fin de l pregunta 8 -----------------------
    
    //Pregunta 9 Pais causante de la WW1 y la WW2
    echo "<h3>9. _____________  , el pais fue el causante de la WW2 y la WW1.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Alemania</h5>";
    if(strtoupper($pregunta9) == "ALEMANIA"){
        $aciertos++;
        echo "<img src='correcto.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //----------------------- Fin de la pregunta 9  ------------------------

    //Pregunta 10 el primer presidente de México.
    echo "<h3>10. _____________  fue el primer presidente de México.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = Guadalupe Victoria</h5>";
    if(strtoupper($pregunta10) == "GUADALUPE VICTORIA"){
        $aciertos++;
        echo "<img src='correcto.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";
?>