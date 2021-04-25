import 'dart:io';

void pretendFileIo() {
  print('File IO: Started');
  print('File IO: File content => Hello Futures');
  print('File IO: Done');
}

void pretendHTTPRequest() {
  print('HTTP Request: Started');
  sleep(Duration(seconds: 8));
  print('HTTP Request: Response => A SON placeholder');
  print('HTTP Request: Done');
}

void pretendDatabaseQuery(String searchTerm) {
  print('Databse query for $searchTerm: Started');
  print('Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
  print('Databse query: Done');
}

void main(List<String> args) {
  pretendFileIo();
  pretendHTTPRequest();
  pretendDatabaseQuery('Flutter');
}
