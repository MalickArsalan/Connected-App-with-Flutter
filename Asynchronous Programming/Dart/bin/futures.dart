void pretendFileIo() {
  print('File IO: Started');
  print('File IO: File content => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest() async {
  print('HTTP Request: Started');
  return Future.delayed(Duration(seconds: 8), () => ('A JSON placeholder'));
}

Future<String> pretendDatabaseQuery(String searchTerm) async {
  print('Databse query for $searchTerm: Started');
  //print('Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
  //print('Databse query: Done');
  return Future.delayed(
      Duration(seconds: 2),
      () =>
          'Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
}

void main(List<String> args) async {
  pretendFileIo();
  var response = await pretendHTTPRequest();
  var query = await pretendDatabaseQuery(response);
  print(query);
}

// Note:
// Await is not the same thing as blocking.
// When you block he application, everything comes to screeching halt. The entire apliactin wait for blocking operation to complete.
// But when waiting on an asynchronous function to complete, only the operation that depend in that function are paused. Other tparts of application can proceed, such as user interface in flutter application.
