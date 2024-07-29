---
layout: splash
permalink: /
title : "Un plan de paysage pour Quimper"
subtitle : "Ur steuñv ardremez evit Kemper"
header:
  overlay_color: "#304591"
  overlay_filter: "0"
excerpt: "Une démarche volontaire lancée par la ville de Quimper, qui invite les habitants et acteurs de son territoire à porter un nouveau regard sur sa géographie, ses ressources et ses fonctionnalités pour en préserver ses qualités et restaurer ses paysages. Imaginer ensemble Quimper demain !"
carousels:
  - images:
    - url: /assets/images/thumbnails/home/croquis1_baie_odet.webp
      caption: "Baie de l'Odet depuis Creac'h Gwen"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis2_kervalguen_2.webp
      caption: "Nouveau quartier de Kervalguen"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis2_kervalguen.webp
      caption: "Ancienne voie ferrée désaffectée reliant Pont-l'Abbé à Quimper"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis3_kerbenez.webp
      caption: "Voie privée menant au château de Kerbenez"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis4_moulinvert.webp
      caption: "Ouverture du Steïr dans le quartier du Moulin Vert"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis4_routearbrechapon.webp
      caption: "Alignement remarquable de Hêtres sur la route de l'Arbre au Chapon"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis5_stangala.webp
      caption: "Belvédère sur les gorges de l'Odet au Stangala"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis6_frugy.webp
      caption: "Ouverture visuelle sur la vallée du Steïr depuis le Mont Frugy"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis7_frugy.webp
      caption: "Ouverture visuelle sur le centre-ville depuis le Mont Frugy"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis8_frugy.webp
      caption: "Ouverture visuelle sur le centre-ville depuis le Mont Frugy"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis8_lineostic.webp
      caption: "Depuis le nouveau quartier Liénostic, perspective sur le plateau bocager sud"
      width: 1000
      height: 707
    - url: /assets/images/thumbnails/home/croquis9_troyalach.webp
      caption: "Entrée de ville de Troyalac'h"
      width: 1000
      height: 707
fresque:
  - title: "Inscription fresque paysagère"
    excerpt: " Participez à la fresque paysagère, rendez-vous le samedi 05 octobre 2024 !"
    url: "/fresque_paysagere/"
    btn_label: "Inscription"
    btn_class: "btn--primary"
intro: 
  - excerpt: 'Le paysage est une notion à la fois subjective et objective. La convention européenne du paysage de 2000 le définit comme ce qui suit : "Le paysage est une partie de territoire tel que perçue par les populations, dont le caractère résulte de l’action de facteurs naturels et/ou humains et de leurs interrelations".
   <br>
   Le plan de paysage est un outil de planification permettant d’imaginer un territoire résilient face aux enjeux climatiques actuels et futurs. C’est une démarche participative, imaginée et élaborée avec l’ensemble des acteurs d’un territoire. Elle promeut la préservation, la restauration et la requalification des paysages.'
  - title: "Objectif paysages"
    excerpt: "Situer et suivre les démarches de plan de paysage à travers la France"
    url: "https://objectif-paysages.developpement-durable.gouv.fr/carte-interactive-1"
    btn_label: "Découvrir la carte interactive"
    btn_class: "btn--primary"
feature_row:
  - title: "Diagnostic"
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
gallery:
  - url: /assets/images/home/frise_chronologique.webp
    image_path: /assets/images/home/frise_chronologique.webp
    alt: "Frise chronologique"
    width: 1000
    height: 286
feature_row_2:
  - title: "Votre participation à la galerie photographique"
    excerpt: " Partagez votre vision du territoire et envoyez nous des photos de vos lieux paysagers quimpérois favoris !"
    url: "https://framaforms.org/un-plan-de-paysage-pour-quimper-1695744793"
    btn_label: "Accéder au formulaire de participation"
    btn_class: "btn--primary"
---
{% include feature_row id="marche" type="center" %}

{% include flickity.html %}

{% include feature_row id="intro" type="center" %}

<div id="map"></div>

{% include feature_row %}

Calendrier de l'étude
{% include gallery %}

Afin de vous permettre de contribuer à ce plan de paysage, de nombreux temps d’échange seront organisés tout au long de la démarche : d’octobre 2023 à juin 2025 ! Alors, n'hésitez pas à vous inscrire à la newsletter pour recevoir l'ensemble des informations !

{% include feature_row id="feature_row_2" type="center" %}

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