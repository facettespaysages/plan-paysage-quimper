---
layout: home
classes: wide
author_profile: false
title: Plan de paysage de Quimper
---

<div id="map"></div>

<script>

var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '© OpenStreetMap'
});

var parc1 = L.marker([48.0105328,-4.1174417]).bindPopup('Parc du Manoir des Salles'),
    parc2 = L.marker([47.9980852,-4.112518]).bindPopup('Jardin de la Retraite');

var parcs = L.layerGroup([parc1, parc2]);

var map = L.map('map', {
    center: [47.99483, -4.08923],
    zoom: 14,
    layers: [osm, parcs]
});

var overlayMaps = {
    "Parcs": parcs
};

var layerControl = L.control.layers(overlayMaps).addTo(map);

</script>
