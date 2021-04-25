void pretendFileIo() {
  print('File IO: Started');
  print('File IO: File content => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest() {
  print('HTTP Request: Started');
  return Future.delayed(Duration(seconds: 8), () => ('A JSON placeholder'));
}

void pretendDatabaseQuery(String searchTerm) {
  print('Databse query for $searchTerm: Started');
  print('Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
  print('Databse query: Done');
}

void main(List<String> args) {
  pretendFileIo();
  var response = pretendHTTPRequest();
  response.then((value) => {
        print('HTTP Request: Response => $value'),
        print('HTTP Request: Done'),
      });
  pretendDatabaseQuery('Flutter');
}
