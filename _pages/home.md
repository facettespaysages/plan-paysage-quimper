---
layout: splash
permalink: /
header:
  overlay_color: "#304591"
  overlay_filter: "0"
excerpt: "Une démarche volontaire lancée par une collectivité, qui invite les acteur·ices de son territoire à porter un nouveau regard sur sa géographie, ses ressources et ses fonctionnalités."
carousels:
  - images:
    - url: /assets/images/croquis1_baie_odet.webp
      caption: "Baie de l'Odet depuis Creac'h Gwen"
    - url: /assets/images/croquis2_kervalguen_2.webp
      caption: "Nouveau quartier de Kervalguen"
    - url: /assets/images/croquis2_kervalguen.webp
      caption: "Ancienne voie ferrée désaffectée reliant Pont-l'Abbé à Quimper"
    - url: /assets/images/croquis3_kerbenez.webp
      caption: "Voie privée menant au château de Kerbenez"
    - url: /assets/images/croquis4_moulinvert.webp
      caption: "Ouverture du Steïr dans le quartier du Moulin Vert"
    - url: /assets/images/croquis4_routearbrechapon.webp
      caption: "Alignement remarquable de Hêtres sur la route de l'Arbre au Chapon"
    - url: /assets/images/croquis5_stangala.webp
      caption: "Belvédère sur les gorges de l'Odet au Stangala"
    - url: /assets/images/croquis6_frugy.webp
      caption: "Ouverture visuelle sur la vallée du Steïr depuis le Mont Frugy"
    - url: /assets/images/croquis7_frugy.webp
      caption: "Ouverture visuelle sur le centre-ville depuis le Mont Frugy"
    - url: /assets/images/croquis8_frugy.webp
      caption: "Ouverture visuelle sur le centre-ville depuis le Mont Frugy"
    - url: /assets/images/croquis8_lineostic.webp
      caption: "Depuis le nouveau quartier Liénostic, perspective sur le plateau bocager sud"
    - url: /assets/images/croquis9_troyalach.webp
      caption: "Entrée de ville de Troyalac'h"
intro: 
  - excerpt: 'Le paysage est une notion à la fois subjective et objective. La convention européenne du paysage de 2000 le définit comme ce qui suit : "Le paysage est une partie de territoire tel que perçue par les populations, dont le caractère résulte de l’action de facteurs naturels et/ou humains et de leurs interrelations"'
  - title: "Objectif paysages"
    excerpt: "Situer et suivre les démarches de plan de paysage à travers la France"
    url: "https://objectif-paysages.developpement-durable.gouv.fr/carte-interactive-1"
    btn_label: "Découvrir la carte interactive"
    btn_class: "btn--primary"
feature_row:
  - title: "Unités Paysagères"
    excerpt: "Description des unités paysagères qui constituent Quimper"
    url: "/unites_paysageres/"
    btn_label: "Les découvrir"
    btn_class: "btn--primary"
  - title: "Stratégie paysagère"
    excerpt: "Définition des objectifs de qualité paysagère"
    url: "/strategie_paysagere/"
    btn_label: "La consulter"
    btn_class: "btn--primary"
  - title: "Programme d'actions"
    excerpt: "Rédaction des fiches actions à mettre en oeuvre"
    url: "/programme_actions/"
    btn_label: "En prendre connaissance"
    btn_class: "btn--primary"
---

{% include carousel.html height="50" unit="%" duration="30" number="1" %}

{% include feature_row id="intro" type="center" %}

<div id="map"></div>

{% include feature_row %}

Calendrier de l'étude
![image](assets/images/frise_chronologique.webp)


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