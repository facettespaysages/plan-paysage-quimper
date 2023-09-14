---
layout: splash
permalink: /
header:
  overlay_color: "#304591"
  overlay_filter: "0"
excerpt: "Une démarche volontaire lancée par une collectivité, qui invite les acteur·ices de son territoire à porter un nouveau regard sur sa géographie, ses ressources et ses fonctionnalités."
intro: 
  - excerpt: 'Le paysage est une notion à la fois subjective et objective. La convention européenne du paysage de 2000 le définit comme ce qui suit. "Le paysage est une partie de territoire tel que perçue par les populations, dont le caractère résulte de l’action de facteurs naturels et/ou humains et de leurs interrelations"'
  - image_path: assets/images/thumbnails/projets/Chaumont.webp
    alt: ""
    title: "Objectif paysages"
    excerpt: "Situer et suivre les démarches de plan de paysage à travers la France"
    url: "https://objectif-paysages.developpement-durable.gouv.fr/carte-interactive-1"
    btn_label: "Découvrir la carte interactive"
    btn_class: "btn--primary"
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
    url: "/strategie_paysagere/"
    btn_label: "La consulter"
    btn_class: "btn--primary"
  - image_path: assets/images/thumbnails/projets/Chaumont.webp
    alt: ""
    title: "Programme d'actions"
    excerpt: "Rédaction des fiches actions à mettre en oeuvre"
    url: "/programme_actions/"
    btn_label: "En prendre connaissance"
    btn_class: "btn--primary"
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