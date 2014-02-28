import "dart:io";

main() {
  HttpServer.bind("127.0.0.1", 8080).then((server) {
    server.listen((HttpRequest req) {
      if(req.requestedUri.toString().contains("/echo")) {
        var f = new File(req.requestedUri.toString());
        req.response.writeln(f);
      }
      req.response.close();
    });
  });

  print("listening...");
}