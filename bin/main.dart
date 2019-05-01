import 'dart:async';

main(List<String> arguments) async {
//
//  loadString_('privet').then((s) => print(s));
//
//
//  loadString("hello").then((s) =>  print(s));
//
//
//  addAsync(30)
//      .then(
//        (x) => x(50),
//      )
//      .then(
//        (y) => print(y),
//      );
//
//  Function x = await addAsync(77);
//  int z = await x(23);
//  print(z);

  exampleStream(20).listen((i) => print('heard $i'));

//  await for(var s in stream) {
//    print('Number $s');
//  }

}

Stream<int> exampleStream(int x) async* {

  for(int i = 0; i <= x; i++) {

    await Future.delayed(Duration(milliseconds: 300)).then((_) => print('after await $i'));

    yield i;
  }
}

Future<String> loadString(String str) async {
  await Future.delayed(Duration(seconds: 1));
  return "String: $str";
}

Future<String> loadString_(String str) {
  return Future.delayed(Duration(seconds: 2)).then((_) {
    return 'String: $str';
  });
}

Future<Function> addAsync(int x) async {
  return (int y) async => x + y;
}
