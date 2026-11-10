/* Tus estilos van aquí. */
body { 
      background-color: #F8F9FA;/* Blanco grisáceo muy suave */
      color: #2D3748;/* Gris oscuro neutro para una lectura cómoda */
      font-family: "Inter", sans-serif;
      line-height: 1.5;
}

h1 {color: #0F5C3D;}/* Tu verde bosque como protagonista principal */
h1 {font-size: 2rem;}

h2 {color: #1B7A54;}/* Un verde intermedio más vivo */

h3 {color: #4A5568;}/* Gris pizarra para subtítulos menores */

.highlight { font-weight: 700;}

* { box-sizing: border-box;}
section {
         padding: 16px;
         margin-bottom: 24px;}
main { max-width: 720px;
       display: grid;
       grid-template-columns: 1fr 1fr;
       gap: 1.5rem; }

/* La imagen se vea redondeada */
header img {width: 120px;
  border-radius: 50%;
  border: 3px solid #D4A017;}
/* La foto se ve redondeada */
.team-photo {
  width: 120px;
  border-radius: 50%;
  border: 3px solid #D4A017;}

img { max-width: 100%; 
      height: auto; }

.row { display:flex; 
       flex-wrap: wrap; }

.col-1-3 { width: 33.333%;
           padding: 8px; }

.col-1-2 { width: 50%; 
           padding: 8px; }

.primary-btn { display: inline-block;
               background: #15181B;
               padding: 12px 20px;
               color: #FFFFFF; 
               text-decoration: none; }

.primary-btn:hover { background: #0F5C3D; }

#about { background-image: linear-gradient(rgba(0, 0, 0, 0.55), rgba(0, 0, 0, 0.25)), url("/publico/img/muestras/banner.svg");
         background-size: cover; 
         color: #FFFFFF;}
#about .highlight { color: #D5FF57; }

.contact-float { position: fixed; 
right: 16px;
bottom: 16px;
min-height: 44px; }

#about { grid-column: 1 / -1; }
#projects { grid-column: 1 / -1; }

@media (max-width: 600px) {main {grid-template-columns: 1fr; }
.col-1-3, .col-1-2 { width: 100%; }}

.gallery-controls button { min-height: 44px;}
#skills-gallery {width: 100%; }