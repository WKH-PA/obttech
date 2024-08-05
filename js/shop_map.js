var cityCircle;
var markers___2 = [];
var count = 0;

var lat_df = 21.023440798075764;
var lng_df = 105.80935882794566;

function setLocation(x, y) {
	var largeIcon = {
		url: "../images/location.png",
		scaledSize: new google.maps.Size(48, 48)
	}

	var myLatLng = {
		lat: x,
		lng: y
	};
	var map = new google.maps.Map(document.getElementById('map'), {
			center: { lat: lat_df, lng: lng_df },
			zoom: 14,
			mapTypeId: google.maps.MapTypeId.ROADMAP
	});

	var marker = new google.maps.Marker({
		position: myLatLng,
		map: map
	});
	prev_infowindow = infowindow;
	infowindow.open(map, marker);
	$("html, body").animate({
		scrollTop: 0
	}, "slow");
}

function initAutocomplete(x, y) {

	// console.log(x, y);
	var map;

	map = new google.maps.Map(document.getElementById('map'), {
		center: { lat: lat_df, lng: lng_df },
		zoom: 14,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});

	var marker, i;
	var markers = [];

	var largeIcon = {
		url: "../images/location.png",
		scaledSize: new google.maps.Size(48, 48)
	}

	// 
	if(!isNaN(x) && !isNaN(y)) {
		map = new google.maps.Map(document.getElementById('map'), {
			zoom: 14,
			center: new google.maps.LatLng(x, y),
			mapTypeId: google.maps.MapTypeId.ROADMAP
		});
	}
	// 

	var input = document.getElementById('pac-input');
	var searchBox = new google.maps.places.SearchBox(input);


	map.addListener('bounds_changed', function () {
		searchBox.setBounds(map.getBounds());

	});

	searchBox.addListener('places_changed', function () {
		console.log('places_changed');

		var places = searchBox.getPlaces();

		if (places.length == 0) {
			return;
		}

		var bounds = new google.maps.LatLngBounds();
		places.forEach(function (place) {

			console.log('places =', place);
			count++;

			if (count > 1) { resetMap(); }
			if (!place.geometry) {
				console.log("Returned place contains no geometry");
				return;
			}
			// var iconBase = 'https://maps.google.com/mapfiles/kml/paddle/ylw-stars.png';
			var iconBase = 'images/userlocation.gif';

			var icon = {
				url: iconBase,
				size: new google.maps.Size(71, 71),
				origin: new google.maps.Point(0, 0),
				anchor: new google.maps.Point(17, 34),
				scaledSize: new google.maps.Size(80, 80)
			};

			markers___2.push(new google.maps.Marker({
				map: map,
				icon: icon,
				title: place.name,
				animation: google.maps.Animation.DROP,
				position: place.geometry.location
			}));

			map.setCenter(place.geometry.location)


			cityCircle = new google.maps.Circle({
				strokeColor: '#FF0000',
				strokeOpacity: 0.2,
				strokeWeight: 2,
				fillColor: '#FF0000',
				fillOpacity: 0.2,
				map: map,
				center: place.geometry.location,
				radius: 3000,  // bán kinh map #00ff00
				draggable: false
			});

			if (place.geometry.viewport) {
				bounds.union(place.geometry.viewport);
			} else {
				bounds.extend(place.geometry.location);
			}
		});
		//  map.fitBounds(bounds);
	});


}

function runScript(e) {
	var zoom = $('#zoom').val();
	if (zoom != 14) {
		initAutocomplete('21.0474625', '105.806229');
		setTimeout(function () {
			if (e.keyCode == 13) {

				cityCircle.setMap(null);
				markers___2.forEach(function (marker) {
					marker.setMap(null);
				});
				markers___2 = [];
			}
		}, 1000);
	}
	else {
		if (e.keyCode == 13) {

			cityCircle.setMap(null);
			markers___2.forEach(function (marker) {
				marker.setMap(null);
			});
			markers___2 = [];
		}
	}
}
function resetMap() {

	cityCircle.setMap(null);
	markers___2.forEach(function (marker) {
		marker.setMap(null);
	});
	markers___2 = [];
}

function gotoIndex() {
	sessionStorage.setItem('gotoVaytien', 'vaytien');
	window.location.href = "/";
}