window.addEventListener('load', function (){
    document.getElementById('btnregistrar').addEventListener('click', function (){
        var nombre = document.getElementById('nombre').value;
        var apellido = document.getElementById('apellido').value;
        var usuario = document.getElementById('usuario').value;
        var correo = document.getElementById('correo').value;
        var clave = document.getElementById('clave').value;
        
        //verificated form 
        
        var bandera = false;
        if (nombre.length > 0 && apellido.length > 0 && usuario.length > 0 && correo.length > 0 
                && clave.length > 0) {
            bandera=true;
        }
        
        if (bandera) {
            document.getElementById('formregistro').submit();
        }else{
            alert('Por favor relleno todos los campos');
        }
    })
});