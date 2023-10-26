import 'dart:io';

//products
void createProduct() {
  stdout.write('Enter Product name: ');
  var name = stdin.readLineSync();
  stdout.write('Enter Product price: ');
  var price = int.parse(stdin.readLineSync()!);

  var file = File('product.txt');
  var lines = file.readAsLinesSync();
  file.writeAsStringSync('Name : ${name}, Price: ${price} \n',
      mode: FileMode.append);

  print('ID Product : ${lines.length}');
  print('Prodact added successfully!');
}

void allProducts() {
  var file = File('product.txt');

  var contents = file.readAsStringSync();

  print(contents);
}

void showProduct() {
  var file = File('product.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Product id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);
  if (lineIndex >= 0 && lineIndex < lines.length) {
    var line = lines[lineIndex];
    print('Product $lineIndex: $line');
  } else {
    print('Invalid Product Not Found');
  }
}

void updateProduct() {
  var file = File('product.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Product id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  stdout.write('Enter Product Name : ');
  var name = stdin.readLineSync();
  stdout.write('Enter Product Price : ');
  var price = stdin.readLineSync();

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines[lineIndex] = 'Name : ${name}, Price: ${price} ';
    file.writeAsStringSync(lines.join('\n'));
    print(' Update Product successfully');
  } else {
    print('Invalid Update Product Not successfully');
  }
}

void deleteProduct() {
  var file = File('product.txt');

  var lines = file.readAsLinesSync();

  var lineIndex; 
  stdout.write('Enter Product id: ');
  String? id = stdin.readLineSync();
  lineIndex = int.parse(id!);

  if (lineIndex >= 0 && lineIndex < lines.length) {
    lines.removeAt(lineIndex);
    file.writeAsStringSync(lines.join('\n'));
    print('Delete Product successfully');
  } else {
    print('Invalid Delete Product Not successfully');
  }
}
