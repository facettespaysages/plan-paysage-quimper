---
layout: splash
permalink: /
header:
  overlay_color: "#304591"
  overlay_filter: "0"
excerpt: "Une démarche volontaire, portée par une collectivité, qui invite les acteurs de son territoire à porter un nouveau regard sur son territoire, ses ressources et ses fonctionnalités."
intro: 
  - excerpt: 'La notion de paysage ...'
feature_row:
  - image_path: /assets/images/thumbnails/projets/saint_vincent_2.webp
    alt: ""
    title: "Unités Paysagères"
    excerpt: "Description des unités paysagères qui constituent Quimper"
    url: "/unites_paysageres/"
    btn_label: "Les découvrir"
    btn_class: "btn--primary"
  - image_path: /assets/images/thumbnails/projets/Amiens.webp
    alt: ""
    title: "Stratégie paysagère"
    excerpt: "Définition des objectifs de qualité paysagère"
  - image_path: assets/images/thumbnails/projets/Chaumont.webp
    alt: ""
    title: "Programme d'actions"
    excerpt: "Rédaction des fiches actions à mettre en oeuvre"
---


{% include feature_row id="intro" type="center" %}

<div id="map"></div>

{% include feature_row %}

Calendrier de l'étude


<script>

var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '© OpenStreetMap'
});

var map = L.map('map', {
    center: [47.99483, -4.08923],
    zoom: 12,
    layers: [osm]
});

{%- for unite in site.unites_paysageres -%}
    {% if unite.location.latitude and unite.location.longitude %}
        L.marker([ {{unite.location.latitude}}, {{unite.location.longitude}} ])
         .bindPopup(L.popup({maxWidth:500}).setContent('{{unite.title}}<br><a href="{{ unite.url | relative_url }}">Détails</a>'))
         .addTo(map);
    {% endif %}
{% endfor %}

</script>