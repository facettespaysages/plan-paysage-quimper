---
layout: home
classes: wide
author_profile: false
title: Plan Paysage Quimper
---

<div id="map"></div>

<script>
var map = L.map('map').setView([47.99483, -4.08923], 14);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

L.marker([47.99483, -4.08923]).addTo(map)
    .bindPopup('A pretty CSS3 popup.<br> Easily customizable.')
    .openPopup();
</script>
