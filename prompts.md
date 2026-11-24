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

**Corrección en `css/generated.css`** (dos pasos de la escala que ya usa la hoja, sin números inventados):

```css
main > section > h2 {
  font-size: 2.25rem;
  letter-spacing: -0.01em;
}

@media (max-width: 620px) {
  main > section > h2 {
    font-size: 1.85rem;
  }
}
```

Ahora el `h2` sí obedece al archivo generado: 36 px en escritorio y 29.6 px en móvil, siempre por debajo del `h1` (relación 1.29–2.27). Verificado de 390 a 1600 px de ancho y con recarga en el navegador.

## Interlineado de párrafos y listas

**Modelo:** DeepSeek V4.1 Flash Free

**Prompt:** «Seguimos buscando errores pero ahora de interlineado. Puedes revisar en la página del cv en Calculado font-family y line-height de los párrafos y de las listas y también a mano puedes corregir, guardar y recargar como lo hiciste en lo anterior, encuentra la falla en css/generated.css de tipografía y corrígela.»

**Medido (pestaña Calculado, ventana de 1280 px):** la `font-family` estaba bien (Fraunces en titulares, Inter en texto), pero el `line-height` no:

| Elemento | Antes | Relación |
|---|---|---|
| `body` | 26.4 px (1.65) | referencia correcta |
| `#about` p (derecha) | 17.6 px (1.1) | caja más chica que la letra + aire |
| `#experience lu li` | 17.95 px (1.1) | renglones pegados |
| `#education li` | 17.25 px (1.1) | renglones pegados |
| `#skills > ol li` | 11.97 px (1.1) | casi sin aire entre líneas |

La falla: `main p, main li { line-height: 1.1 }` en `css/generated.css`. El 1.1 es interlineado de titular y se estaba aplicando a texto corrido. Con `main p` (0,0,2) ganaba a todo lo que no tuviera un selector más específico, así que solo se salvaban `#projects p` y `#certifications p`, que ya traen 1.6 en `styles.css`.

**Corrección en `css/generated.css`:**

```css
main p,
main li {
  line-height: 1.6;
}
```

1.6 es el valor con el que la hoja ya compone `#projects p` y `#certifications p`, así que el texto corrido queda parejo en todas las secciones. Después del cambio: `#about` p derecha 25.6 px, `#experience li` 26.1 px, `#education li` 25.1 px, `#skills li` 17.4 px. Guardado, verificado con captura y recargado en el navegador.



