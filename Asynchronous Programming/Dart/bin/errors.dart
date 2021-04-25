void pretendFileIo() {
  print('File IO: Started');
  print('File IO: File content => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest({bool withError = false}) async {
  print('HTTP Request: Started');
  if (withError) {
    return Future.error('Pretend HTTP Timeout');
  } else {
    return Future.delayed(Duration(seconds: 8), () => ('A JSON placeholder'));
  }
}

void pretendDatabaseQuery(String searchTerm) {
  print('Databse query for $searchTerm: Started');
  print('Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
  print('Databse query: Done');
  // return Future.delayed(
  //     Duration(seconds: 2),
  //     () =>
  //         'Databse query: Resultset => ID: 1, FirstName: Malick, LastName: Noor');
}

void main(List<String> args) async {
  pretendFileIo();
  try {
    var response = await pretendHTTPRequest(withError: false);
    print('HTTP Request: Response => $response');
    print('HTTP Request: Done');
    pretendDatabaseQuery(response);
  } catch (e) {
    print('An error occurred: $e');
  }
}
