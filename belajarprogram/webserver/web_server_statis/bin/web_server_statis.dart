// contoh program static handler
import 'package:shelf_static/shelf_static.dart' as shelf_static;
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:path/path.dart' as path;
import 'dart:io' as io;

void main() async {
  var pathToBuild = path.join(path.dirname(io.Platform.script.toFilePath()));
  print(pathToBuild);
  final handler = shelf_static.createStaticHandler('$hasil/program',
      defaultDocument: 'index.html');
  final io.HttpServer server = await shelf_io.serve(handler, io.InternetAddress.anyIPv4, 8080);
  print('Serving at http://${server.address.host}:${server.port}');
}
