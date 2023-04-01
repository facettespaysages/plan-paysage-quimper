---
layout: single
classes: wide
author_profile: false
<!---
title: Plan de paysage de Quimper
--->
---

<div id="map"></div>

## Présentation synthétique

Quimper est un territoire reconnu pour la qualité de son cadre de vie. Pour la municipalité, cette attractivité doit se conjuguer avec la création d’un territoire anticipant les conséquences du changement climatique.

La démarche de plan de paysage a pour objectif d’appréhender l’évolution des paysages dans le temps et d’assurer une cohérence des différentes interventions sur le territoire, afin de construire un projet de cadre de vie de qualité.

![Quimper](/plan-paysage-quimper/assets/images/quimper.jpg)

Le premier objectif du plan de paysage est d’imaginer le récit paysager de Quimper et de trouver une cohérence sur un territoire riche en formes paysagères jamais réellement décrites. Du fait de la forte dimension patrimoniale du territoire, le second objectif sera d’imaginer les modalités du dialogue entre ce patrimoine et le paysage, pour les conforter et élargir les motifs d’attractivité du territoire.

Le plan de paysage tracera les contours d’une stratégie prospective pour la création des paysages de demain, résilients et sobres. Pour cela, il s’appuiera sur la trame verte et bleue et consolidera le lien entre biodiversité et paysage. Le dernier enjeu sera de s’adosser au schéma directeur des mobilités actives pour définir un maillage de mobilités douces intégrées à la trame paysagère du territoire.

<script>

var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '© OpenStreetMap'
});

var otm = L.tileLayer('http://a.tile.opentopomap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '© OpenTopoMap'
});

var parc1 = L.marker([48.0105328,-4.1174417]).bindPopup('Parc du Manoir des Salles'),
    parc2 = L.marker([47.9980852,-4.112518]).bindPopup('Jardin de la Retraite');

var parcs = L.layerGroup([parc1, parc2]);

var map = L.map('map', {
    center: [47.99483, -4.08923],
    zoom: 12,
    layers: [osm, parcs]
});

{%- for unite in site.unites_paysageres -%}
    {% if unite.location.latitude and unite.location.longitude %}
        L.marker([ {{post.location.latitude}}, {{post.location.longitude}} ], { title: '{{post.title}}'}).addTo(map);
    {% endif %}
{% endfor %}

var froutStyle = {
    "color": "#45d701",
    "weight": 5,
    "opacity": 0.7,
    fillOpacity: 0.7
};

{%- for unite in site.unites_paysageres -%}
    {% if unite.location.geojson %}
        L.geoJSON(unite.location.geojson, {title: '{{unite.title}}', style: froutStyle}).addTo(map);
    {% endif %}
{% endfor %}

</script>
