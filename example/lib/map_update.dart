import 'package:apple_maps_flutter/apple_maps_flutter.dart';
import 'package:apple_maps_flutter_example/page.dart';
import 'package:flutter/material.dart';

class MapUpdatePage extends ExamplePage {
  MapUpdatePage() : super(const Icon(Icons.refresh), 'Update Map');

  @override
  Widget build(BuildContext context) {
    return _MapUpdate();
  }
}

class _MapUpdate extends StatefulWidget {
  _MapUpdate({Key? key}) : super(key: key);
  @override
  _MapUpdateState createState() => _MapUpdateState();
}

class _MapUpdateState extends State<_MapUpdate> {
  @override
  Widget build(BuildContext context) {
    return AppleMap(
      mapType: MapType.hybridFlyover,
      initialCameraPosition: CameraPosition(
        target: LatLng(-33.852, 151.211),
        // zoom: -20e+20,
      ),
      annotations: {
        // Annotation(
        //   infoWindow: InfoWindow(title: 'Africa'),
        //   position: LatLng(24, 26),
        //   annotationId: AnnotationId('value1'),
        // ),
        Annotation(
          position: LatLng(24, 80),
          annotationId: AnnotationId('value2'),
        ),
        Annotation(
          position: LatLng(1, 30),
          annotationId: AnnotationId('value3'),
        ),
        Annotation(
          position: LatLng(10, 79),
          annotationId: AnnotationId('value4'),
        )
      },
      polylines: {
        Polyline(
          points: [
            LatLng(24, 26),
            LatLng(24, 80),
            LatLng(1, 30),
            LatLng(10, 79)
          ],
          patterns: [PatternItem.dot],
          polylineId: PolylineId('value1'),
          jointType: JointType.bevel,
          color: Colors.white,
          polylineCap: Cap.roundCap,
          width: 1,
        ),
      },
      circles: {
        Circle(
          circleId: CircleId('circle1'),
          center: LatLng(24, 26),
          strokeWidth: 25,
          radius: 200,
          strokeColor: Colors.red,
          fillColor: Colors.black,
        )
      },
      minMaxZoomPreference: MinMaxZoomPreference(-10e+10, 10e+5),
      trackingMode: TrackingMode.follow,
    );
  }
}
