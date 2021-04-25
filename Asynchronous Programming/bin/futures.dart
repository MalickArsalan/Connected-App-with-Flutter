void pretendFileIo() {
  print('File IO: Started');
  print('File IO: File content => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest() {
  print('HTTP Request: Started');
  return Future.delayed(Duration(seconds: 8), () => ('A JSON placeholder'));
}

Future<String> pretendDatabaseQuery(String searchTerm) {
  print('Databse query for $searchTerm: Started');
  //print('Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
  //print('Databse query: Done');
  return Future.delayed(
      Duration(seconds: 2),
      () =>
          'Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
}

void main(List<String> args) {
  pretendFileIo();
  var response = pretendHTTPRequest();
  response.then((s) => {
        print('HTTP Request: Response => $s'),
        print('HTTP Request: Done'),
        //pretendDatabaseQuery('Flutter')
        pretendDatabaseQuery('Flutter').then((rs) => {
              print('Database query: Resultset => $rs'),
              print('Database query: Done'),
            })
      });
}
