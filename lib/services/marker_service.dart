import 'package:gmap/models/place.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerService {
  List<Marker> getMarkers(List<Place> places) {
    var markers = <Marker>[];

    places.forEach((place) {
      Marker marker = Marker(
          markerId: MarkerId(place.name),
          draggable: false,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          infoWindow:
              InfoWindow(title: place.name, snippet: "Cost: 120 per hour"),
          position: LatLng(place.geometry.location.lat,
              place.geometry.location.lng)); //hueCyan

      markers.add(marker);
    });

    return markers;
  }
}
