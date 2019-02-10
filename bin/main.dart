import 'dart:async';

main(List<String> arguments) async {

  var f_loadedString = loadString_('privet');

  String str = await f_loadedString;

  print(str);

  String str2 = await loadString("hello");
  print(str2);




}

Future<String> loadString(String str) async {
  await Future.delayed(Duration(seconds: 2));
  return "String: $str";
}

Future<String> loadString_(String str) {
  return Future.delayed(Duration(seconds: 3)).then((_) {
    return 'String: $str';
  });
}
