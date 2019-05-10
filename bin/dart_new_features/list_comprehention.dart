main() {

  List<String> resultList = [
    
    'start',
    ...strList,
    ...intList.map((f) => f.toString()).toList(),
    'break\n',
    for (var i = 0; i < generated.length; i++) 
      if(i%2 == 0) generated[i]
    

  
  ];

  print(resultList);
}

List<String> strList = ['one', 'two', 'three', 'four'];

final intList = [11,22,33,44];

final generated = List<String>.generate(15, (i) => i.toString());




