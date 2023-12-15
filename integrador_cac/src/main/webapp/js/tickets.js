// Validar Campos
function validar() {
  let nombre = document.getElementById("nombre").value;
  if (nombre === "") {
    alert("Ingrese su Nombre");
    return false;
  }
  let apellido = document.getElementById("apellido").value;
  if (apellido === "") {
    alert("Por favor, ingrese su apellido.");
  }
  let correo = document.getElementById("correo").value;
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(correo)) {
    alert("Por favor, ingrese un correo electrónico válido.");
    return false;
  }
  let cantidad = document.getElementById("cantidad").value;
  if (cantidad === "") {
    alert("Por favor, ingrese cantidad de tickets.");
  }
  let categoria = document.getElementById("categoria").value;
  if (categoria === "") {
    alert("Seleccione una categoría");
  }
  const resultado = calcular();
  return resultado;
}

// Calcular monto
const ticketValor = 200;
let descEstudiante = 80;
let descTrainee = 50;
let descJunior = 15;

const calcular = () => {
  let categoria = document.getElementById("categoria").value;
  console.log("categoria", categoria);
  let cantidad = document.getElementById("cantidad").value;
  console.log(cantidad);
  let totalAPagar = ticketValor * cantidad;
  switch (categoria) {
    case "Estudiante":
      totalAPagar =
        (ticketValor - (ticketValor * descEstudiante) / 100) * cantidad;
      break;
    case "Trainee":
      totalAPagar =
        (ticketValor - (ticketValor * descTrainee) / 100) * cantidad;
      break;
    case "Junior":
      totalAPagar = (ticketValor - (ticketValor * descJunior) / 100) * cantidad;
      break;
  }
  totalPago.innerHTML = "Total a pagar: $ " + totalAPagar;
};

const clear=() => {
  console.log("limpia todos los campos");
  document.getElementById("nombre").value = "";
  document.getElementById("apellido").value = "";
  document.getElementById("correo").value = "";
  document.getElementById("cantidad").value = "";
  document.getElementById("categoria").value = "";
  totalPago.innerHTML = "Total a pagar: $ "
}
botonBorrar.addEventListener('click', clear)
botonResumen.addEventListener('click', validar)