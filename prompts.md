**Modelo:** DeepSeek V4.1 Flash Free

<!-- prompts.md · tu bitácora de prompts de hoy. Vive en tu carpeta cv, junto a index.html. La lección te dice qué encabezados lleva y qué va debajo de cada uno. -->

## AGENTS.md

## Prompt vago

La sección ya está implementada; este es el plan que se aplicó:
1. Navegación — Agregar <li><a href="#certifications">Certificaciones</a></li> en index.html.
2. Contenido — Insertar una sección id="certifications" entre Educación y Habilidades, con título y lista de certificaciones.
3. Estilos — Añadir #certifications { grid-column: 1 / -1; } en css/styles.css para que ocupe el ancho completo.
4. Verificación — Abrir index.html y comprobar que el enlace navega a la sección y que el diseño se mantiene en escritorio y móvil.
Estado actual: los pasos 1–3 están hechos. Falta reemplazar el texto de ejemplo:
Nombre de la certificación — Institución, año
Si me pasas los nombres, instituciones y años reales, los sustituyo.

## Prompt preciso

Listo. La sección quedó ubicada después de #skills, dentro de <main>:
<section class="row" id="certifications">
  <h2>Cursos y certificaciones</h2>
  <ul>
    <li>
      <h3>Curso de GitHub</h3>
      <p>GitHub · <time datetime="AAAA-MM">AAAA-MM</time></p>
    </li>
    <li>
      <h3>CCNA: Introducción a las redes</h3>
      <p>Cisco Networking Academy · <time datetime="AAAA-MM">AAAA-MM</time></p>
    </li>
    <li>
      <h3>CCNA: Conmutación, enrutamiento y redes inalámbricas esenciales</h3>
      <p>Cisco Networking Academy · <time datetime="AAAA-MM">AAAA-MM</time></p>
    </li>
  </ul>
</section>
También moví el enlace Certificaciones al final del <nav>. La regla #certifications { grid-column: 1 / -1; } ya estaba en css/styles.css y no modifiqué las demás.
Dejé AAAA-MM como marcador porque no me diste las fechas. Pásamelas (por ejemplo 2026-05) y las reemplazo en los tres <time>.


