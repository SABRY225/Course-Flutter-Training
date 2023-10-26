import 'dart:io';

void createReview() {
  stdout.write('Enter Product name: ');
  var name = stdin.readLineSync();
  stdout.write('Enter Review evaluation: ');
  var evaluation = int.parse(stdin.readLineSync()!);

  var file = File('review.txt');
  var lines = file.readAsLinesSync();
  file.writeAsStringSync('Name : ${name}, Evaluation: ${evaluation} \n',
      mode: FileMode.append);

  print('ID Review : ${lines.length}');
  print('Review added successfully!');
}

void allReviews() {
  var file = File('review.txt');

  var contents = file.readAsStringSync();

  print(contents);
}

void showReview() {
  var file = File('review.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Review id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);
  if (lineIndex >= 0 && lineIndex < lines.length) {
    var line = lines[lineIndex];
    print('Review $lineIndex: $line');
  } else {
    print('Invalid Review Not Found');
  }
}

void updateReview() {
  var file = File('review.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Review id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  stdout.write('Enter Review Name : ');
  var name = stdin.readLineSync();
  stdout.write('Enter Review evaluation : ');
  var evaluation = stdin.readLineSync();

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines[lineIndex] = 'Name : ${name}, Evaluation: ${evaluation} ';
    file.writeAsStringSync(lines.join('\n'));
    print('User Update Review successfully');
  } else {
    print('Invalid Update Review Not successfully');
  }
}

void deleteReview() {
  var file = File('review.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Review id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines.removeAt(lineIndex);
    file.writeAsStringSync(lines.join('\n'));
    print('Delete Review successfully');
  } else {
    print('Invalid Delete Review Not successfully');
  }
}
