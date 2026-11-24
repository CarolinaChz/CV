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

## Qué cambió

Mejoró y agrego la parte de cursos y certificaciones.

## Elementos de mi CV

**Modelo:** DeepSeek V4.1 Flash Free

**Prompt:** «En Elementos de mi CV, compara en Calculado el tamaño de `<h1>` con el de un `<h2>`, font-size dice cuánto mide de verdad, después de todas las reglas. La corriges a mano: cambia en css/generated.css, guárdala y recarga el navegador.»

**Medido (pestaña Calculado, ventana de 1280 px):** `h1` = 81.6 px y `h2` = 42.4 px.

Lo raro: `css/generated.css` decía `main h2 { font-size: 2.25rem }` (36 px), pero el `h2` medía 42.4 px, el clamp de `styles.css`. Motivo: `main h2` tiene especificidad (0,0,2) y `main > section > h2` tiene (0,0,3), así que la regla generada nunca ganaba. En pantallas medianas el `h2` se quedaba en 42.4 px mientras el `h1` bajaba a 46.4 px: los dos niveles casi empataban.

**Corrección en `css/generated.css`:**

```css
main > section > h2 {
  font-size: clamp(1.85rem, 2.9vw, 2.25rem);
  letter-spacing: -0.01em;
}
```

Ahora el `h2` sí obedece al archivo generado y se queda fluido: 36 px en escritorio, 29.6 px en móvil, siempre por debajo del `h1` (relación 1.57–2.27). Verificado de 390 a 1600 px de ancho y con recarga en el navegador.


