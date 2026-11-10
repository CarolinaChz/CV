// Las interacciones de tu CV van aquí.
const galleryImage = document.getElementById('gallery-image');
const imageCounter = document.getElementById('image-counter');
const prevButton = document.getElementById('prev-image');
const nextButton = document.getElementById('next-image');

const images = [
   { src: '/publico/img/muestras/article-html.svg', alt: 'HTML: dos corchetes angulares sobre un fondo de color verde' },
   { src: '/publico/img/muestras/article-flexbox.svg', alt: 'CSS con flexbox: tres cajas acomodadas en una fila' },
   { src: 'article-accessibility.svg', alt: 'Accesibilidad: un botón con el contorno de foco marcado' }
];
let current = 0; 

function showImage(index) {
  if (index < 0) 
  {
    index = images.length - 1;
  }
  if (index >= images.length) 
  {
    index = 0;
  }
  current = index;
  galleryImage.src = images[current].src;
  galleryImage.alt = images[current].alt;
  imageCounter.textContent = `${current + 1} de ${images.length}`;
}

showImage(0);

nextButton.addEventListener('click', () => {showImage(current + 1); });
prevButton.addEventListener('click', () => {showImage(current - 1); });

const aboutSection = document.querySelector('#about');
const toggleButton = document.querySelector('#toogle-details');

const facts = ['Hablo español e inglés', 'Me interesa el tema de Ciberseguridad', 'Estoy disponible desde enero'];

toggleButton.addEventListener('click', () => {
  const list = aboutSection.querySelector('.details');
  if (list) {
    list.remove();
    toggleButton.textContent = 'Más sobre mí';
    toggleButton.setAttribute('aria-expanded', 'false');
    return;
  }
  const newList = document.createElement('ul');
  newList.className = 'details';
  for (const fact of facts) {
    const item = document.createElement('li');
    item.textContent = fact;
    newList.append(item);
  }
  toggleButton.after(newList);
  toggleButton.textContent = 'Menos sobre mí';
  toggleButton.setAttribute('aria-expanded', 'true');
});