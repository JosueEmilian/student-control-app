/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


window.addEventListener('load', function (){
    document.getElementById('btniniciar').addEventListener('click', function (){
        var nombre = document.getElementById('usuario').value;
        var clave = document.getElementById('clave').value;
        
        //verificated form 
        
        var bandera = false;
        if (nombre.length > 0 && clave.length > 0 ) {
            bandera=true;
        }
        
        if (bandera) {
            document.getElementById('forminicio').submit();
        }else{
            alert('Por favor relleno todos los campos');
        }
    })
});