<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Proyecto integrador | Ramírez Carolina E</title>
    <link rel="stylesheet" href="./css/estilos.css" />
  </head>
  <body>
   <jsp:include page="header.jsp"/>
    <main class="main-tickets">
      <section class="categoria">
        <div class="categoria__cat" id="estudiante">
          <header><h1 class="categoria__cat__title">Estudiante</h1></header>
          <body>
            <h2 class="categoria__cat__texto">Tiene un descuento</h2>
            <h1 class="categoria__cat__porcentaje">80%</h1>
            <h2 class="categoria__cat__texto">*presentar documentación</h2>
          </body>
        </div>
        <div class="categoria__cat" id="trainee">
          <h1 class="categoria__cat__title">Trainee</h1>
          <h2 class="categoria__cat__texto">Tiene un descuento</h2>
          <h1 class="categoria__cat__porcentaje">50%</h1>
          <h2 class="categoria__cat__texto">*presentar documentación</h2>
        </div>
        <div class="categoria__cat" id="junior">
          <h1 class="categoria__cat__title">Junior</h1>
          <h2 class="categoria__cat__texto">Tiene un descuento</h2>
          <h1 class="categoria__cat__porcentaje">15%</h1>
          <h2 class="categoria__cat__texto">*presentar documentación</h2>
        </div>
      </section>
      <section class="form">
        <div class="form__encabezado">
          <h5>VENTA</h5>
          <h1>VALOR DE TICKET $200</h1>
        </div>

        <div class="form-input-center">
          <input class="input-center" type="text" placeholder="Nombre" name="nombre" id="nombre" required/>
          <!-- <div id="errorNombre" class="invalid-feedback">
            Please provide a valid zip.
          </div> -->
          <input class="input-center" type="text" placeholder="Apellido" name="apellido" id="apellido" required/>
        </div>

        <div class="form-input-center">
          <input class="input-center" type="text" placeholder="correo" name="correo" id="correo" required/>
        </div>

        <div class="form-input-center">
          <div class="input-label">
            <label for="cantidad">Cantidad</label>
            <input class="input-center" type="number" placeholder="cantidad" name="cantidad" id="cantidad" min="1" required/>
          </div>
          <div class="input-label">
            <label for="categoria">Categoria</label>
            <select class="input-center" name="categoria" id="categoria" required>
              <option value="Estudiante">Estudiante</option>
              <option value="Trainee">Tainee</option>
              <option value="Junior">Junior</option>
            </select>
          </div>
        </div>
        <div class="total">
          <h1 class="total_pago" id="totalPago">Total a pagar: </h1>
        </div>
        <div class="botones">
          <button class="boton" id= "botonBorrar" >Borrar</button>
          <button class="boton" id="botonResumen" >Resumen</button>
        </div>
      </section>
    </main>

   <jsp:include page="footer.jsp"/>
    <script src="./js/tickets.js"></script>
  </body>
  
</html>