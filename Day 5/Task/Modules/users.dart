import 'dart:io';

//Users
void createUse() {
  stdout.write('Enter User name: ');
  var name = stdin.readLineSync();
  stdout.write('Enter User age: ');
  var age = int.parse(stdin.readLineSync()!);

  var file = File('user.txt');
  var lines = file.readAsLinesSync();
  file.writeAsStringSync('Name : ${name}, Age: ${age} \n',
      mode: FileMode.append);

  print('ID User : ${lines.length}');
  print('User added successfully!');
}

void allUsers() {
  var file = File('user.txt');

  var contents = file.readAsStringSync();
  print(contents);
}

void showUsers() {
  var file = File('user.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter User id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);
  if (lineIndex >= 0 && lineIndex < lines.length) {
    var line = lines[lineIndex];
    print('User $lineIndex: $line');
  } else {
    print('Invalid User Not Found');
  }
}

void updateUse() {
  var file = File('user.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter User id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  stdout.write('Enter User Name : ');
  var name = stdin.readLineSync();
  stdout.write('Enter User Age : ');
  var age = stdin.readLineSync();

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines[lineIndex] = 'Name : ${name}, Age: ${age} ';
    file.writeAsStringSync(lines.join('\n'));
    print('User Update User successfully');
  } else {
    print('Invalid Update User Not successfully');
  }
}

void deleteUser() {
  var file = File('user.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter User id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines.removeAt(lineIndex);
    file.writeAsStringSync(lines.join('\n'));
    print('Delete User successfully');
  } else {
    print('Invalid Delete User Not successfully');
  }
}
