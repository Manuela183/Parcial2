var nombre = [];
var poblacion = [];

let url = "http://localhost:8000/api/pais";

fetch(url)

.then(datos_botenidos => datos_botenidos.json())

.then(function transformar (datos_obtenidos) {

    datos_obtenidos.forEach(function agregar (datos_obtenidos)
    {
        //Si los datos son diferentes de vacío en el año y el total se agrega el contenido de cada arreglo
        if (datos_obtenidos.nombre != undefined && datos_obtenidos.poblacion != undefined)
        {
            nombre.push(datos_obtenidos.nombre);
            poblacion.push(datos_obtenidos.poblacion);
        }
    });

    //Variables para las gráficas
    var graf1 = 
    {
        
        y: poblacion,
        x: nombre,
        type: 'bar',
        marker: {
            color: 'rgb(100, 171, 56)',
            line: {
              color: 'rgba(50,171,96,1.0)',
              width: 1
            }
        },
        
    };

    var datosGraficas = [graf1];

    //Estilos de la gráfica
    var layout =
    {
        
        title: 'Paises',
        xaxis:
        {
            title: 'Nombre'
        },

        yaxis:
        {
            title: 'Poblacion'
        },
        
        font: {
            family: 'Times New Roman',
            size: 12,
            color: 'rgb(100, 171, 56)'
        },
    };
    Plotly.newPlot('grafico', datosGraficas, layout);
});

function validar(){
    let poblacion = parseInt(document.getElementById("poblacion").value);
    let boton = document.getElementById("enviar");
    if(poblacion <= 0 && poblacion >= 2500000000){
        alert("La población debe ser mayor a cero y menor a 2.500 millones");
        boton.disabled = false;
    }else{
        boton.disabled = true;
    }
}