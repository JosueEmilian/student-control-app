const body = document.querySelector("body"),
      sbarra = body.querySelector(".sbarra"),
      arrowN1 = body.querySelector(".arrow1"),
      btnBuscar = body.querySelector(".buscar"),
      seleccionModo = body.querySelector(".boton-modo"),
      textoModo = body.querySelector(".aspecto-texto");
      
      arrowN1.addEventListener("click", ()=>{
        sbarra.classList.toggle("salir");
      });
      btnBuscar.addEventListener("click", ()=>{
        sbarra.classList.remove("salir");
      });

      seleccionModo.addEventListener("click", ()=>{
        body.classList.toggle("noche");

        if(body.classList.contains("noche")){
            textoModo.innerText = "Modo claro";
        }else{
            textoModo.innerText = "Modo Oscuro";
        }
       });