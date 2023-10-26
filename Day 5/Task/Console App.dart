import 'dart:io';
import 'Modules.dart';
void main() {
  print('===================================== Console App =====================================');
  while (true) {
    stdout.write('pc\\ Ahmed Sabry> ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case 'create user' || 'create user ':
        createUse();
        break;
      case 'create product' || 'create product ':
        createProduct();
        break;
      case 'create review' || 'create review ':
        createReview();
        break;
      case 'show user' || 'show user ':
        showUsers();
        break;
      case 'show product' || 'show product ':
        showProduct();
        break;
      case 'show review' || 'show review ':
        showReview();
        break;
      case 'all users' || 'all users ':
        allUsers();
        break;
      case 'all products' || 'all products ' :
        allProducts();
        break;
      case 'all reviews' || 'all reviews ':
        allReviews();
        break;
      case 'update user' || 'update user ':
        updateUse();
        break;
      case 'update product' || 'update product ':
        updateProduct();
        break;
      case 'update review' || 'update review ' :
        updateReview();
        break;
      case 'delete user' || 'delete user ':
        deleteUser();
        break;
      case 'delete product' || 'delete product ':
        deleteProduct();
        break;
      case 'delete review' || 'delete review ':
        deleteReview();
        break;
      default:
        print('Invalid choice. Try again.');
    }
  }

}



