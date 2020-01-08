var map = L.map('map',{
    center: [54, -5],
    zoom: 5.2
});
var myIcon = L.icon({
    iconUrl: 'scripts/leaflet/images/marker-icon.png',
    iconSize: [10, 15],
    iconAnchor: [22, 94],
    popupAnchor: [-3, -76],
    shadowSize: [68, 95],
    shadowAnchor: [22, 94]
});
L.geoJSON(ocean, {
    style: function (geoJsonFeature) {
        return {fill: true,
                fillColor: 'rgba(20,20,255,0.8)',
                stroke: false
            };
    }
}).addTo(map);
L.geoJSON(countries_map, {
    style: function (geoJsonFeature) {
        return {fill: true,
                fillColor: '#eeb',
                stroke: false
            };
    }
}).addTo(map);

L.marker([52, 0], {icon: myIcon}).addTo(map);