---
layout: home
classes: wide
author_profile: false
title: Plan Paysage Quimper
---
<div id="map"></div>

<script>
    var map = new L.Map("map", {
        center: new L.LatLng(47.99483, -4.08923),
        zoom: 14,
        providerBasemap: "OpenTopoMap"
    });

    var layer = new L.StamenTileLayer("toner-lite");
    map.addLayer(layer);
</script>
