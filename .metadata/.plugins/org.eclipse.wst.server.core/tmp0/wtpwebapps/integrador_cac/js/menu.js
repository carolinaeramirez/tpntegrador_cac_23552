const menu = document.querySelector('.encabezado__nav');
const hamburguesa = document.querySelector('.encabezado__hamburguesa');

hamburguesa.addEventListener('click', () => {
  const menu = document.querySelector('.encabezado__nav');

  menu.classList.toggle('open');
});