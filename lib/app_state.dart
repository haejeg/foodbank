import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _temperature = prefs.getBool('ff_temperature') ?? _temperature;
    _notifications = prefs.getBool('ff_notifications') ?? _notifications;
    _routes =
        prefs.getStringList('ff_routes')?.map((path) => path.ref)?.toList() ??
            _routes;
  }

  SharedPreferences prefs;

  bool _temperature = true;
  bool get temperature => _temperature;
  set temperature(bool _value) {
    _temperature = _value;
    prefs.setBool('ff_temperature', _value);
  }

  bool _notifications = true;
  bool get notifications => _notifications;
  set notifications(bool _value) {
    _notifications = _value;
    prefs.setBool('ff_notifications', _value);
  }

  List<DocumentReference> _routes = [];
  List<DocumentReference> get routes => _routes;
  set routes(List<DocumentReference> _value) {
    _routes = _value;
    prefs.setStringList('ff_routes', _value.map((x) => x.path).toList());
  }

  void addToRoutes(DocumentReference _value) {
    _routes.add(_value);
    prefs.setStringList('ff_routes', _routes.map((x) => x.path).toList());
  }

  void removeFromRoutes(DocumentReference _value) {
    _routes.remove(_value);
    prefs.setStringList('ff_routes', _routes.map((x) => x.path).toList());
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
