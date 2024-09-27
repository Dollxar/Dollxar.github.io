var ocultar = false;

function muestra_texto() {
    if (!ocultar) {
        document.getElementById("texto").innerHTML = "<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Debitis nihil neque similique a, fugiat quidem pariatur minus, quam temporibus distinctio eum praesentium ipsam voluptatem voluptate? Nihil accusamus deserunt excepturi perspiciatis. </p>";
        ocultar = true;
        document.getElementById("mostrar").innerHTML = "Mostrar menos"
    } else {
        document.getElementById("texto").innerHTML = "";
        ocultar = false;
        document.getElementById("mostrar").innerHTML = "Mostrar mas"
    }
}

function lanzar_dado() {
    var numero = Math.floor(Math.random() * 6) + 1;

    document.getElementById("imagen_dado").innerHTML = "<img src='dado" + numero + ".png' width='100 px'>";
}