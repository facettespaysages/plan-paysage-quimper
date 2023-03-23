---
layout: single
classes: wide
author_profile: false
<!---
title: Plan de paysage de Quimper
--->
---

<div id="map"></div>

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

var frout = {
              "type": "FeatureCollection",
              "features": [
                {
                  "type": "Feature",
                  "properties": {},
                  "geometry": {
                    "coordinates": [
                      [
                        [
                          -4.096884914030198,
                          47.996758874259456
                        ],
                        [
                          -4.0950223408868,
                          47.99737557371935
                        ],
                        [
                          -4.091560685442744,
                          47.998083886818705
                        ],
                        [
                          -4.090489814622941,
                          47.99816238127079
                        ],
                        [
                          -4.088567409225277,
                          47.99843904853836
                        ],
                        [
                          -4.088561896701293,
                          47.99885305224575
                        ],
                        [
                          -4.087676751028141,
                          47.999178240917644
                        ],
                        [
                          -4.087214507750929,
                          47.99898804689866
                        ],
                        [
                          -4.084799709982093,
                          47.99963218610827
                        ],
                        [
                          -4.084147377945413,
                          48.000250048743396
                        ],
                        [
                          -4.083561777369852,
                          48.00163553388762
                        ],
                        [
                          -4.083028356414928,
                          48.00181575705491
                        ],
                        [
                          -4.084305513180624,
                          48.001800692466674
                        ],
                        [
                          -4.084787768306114,
                          48.00085079593052
                        ],
                        [
                          -4.085173967391995,
                          48.00020548773398
                        ],
                        [
                          -4.086047842512585,
                          47.999743357215095
                        ],
                        [
                          -4.088942785348422,
                          47.999101961966204
                        ],
                        [
                          -4.088892343320339,
                          47.99876858890872
                        ],
                        [
                          -4.0909792325686,
                          47.99878925174369
                        ],
                        [
                          -4.091252311662572,
                          47.99898072600212
                        ],
                        [
                          -4.092362184050387,
                          47.99873317065615
                        ],
                        [
                          -4.0934628075008845,
                          47.998361835409696
                        ],
                        [
                          -4.093971499012582,
                          47.9980400093674
                        ],
                        [
                          -4.095451328862225,
                          47.99780482752891
                        ],
                        [
                          -4.096588948059548,
                          47.997148788312415
                        ],
                        [
                          -4.096884914030198,
                          47.996758874259456
                        ]
                      ]
                    ],
                    "type": "Polygon"
                  }
                }
              ]
            };

var froutStyle = {
    "color": "#45d701",
    "weight": 5,
    "opacity": 0.7,
    fillOpacity: 0.7
};

var frout = L.geoJSON(frout, {style: froutStyle}).bindPopup('Le Frout');

var vallees = L.layerGroup([frout]);

var baseMaps = {
    "OpenStreetMap": osm,
    "OpenTopoMap": otm
};

var overlayMaps = {
    "Parcs": parcs,
    "Vallées": vallees
};

var layerControl = L.control.layers(baseMaps, overlayMaps).addTo(map);

</script>
