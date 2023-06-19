import 'package:http/http.dart' as http;
import 'package:practicas/models/potho_model.dart';

class PothosProvider {
  final _apiKey = 'IrnKGvf9l5EjXxKTpIZz6C-stAHBf817b2sDm7PaPMU';
  final _url = 'api.unsplash.com';
  List<PhotoModel> photos = [];
  
  Future<List<PhotoModel>> fetchPothos() async {
    final url = Uri.https(_url, '/photos/random', 
      {'client_id': _apiKey, 'count': '30'}
    );
    final resp = await http.get(url);
    return photoModelFromMap(resp.body).toList();
  }
}