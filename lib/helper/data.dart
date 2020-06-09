import 'package:routonews/model/category_model.dart';

String apiKey = "563492ad6f91700001000001eab6bc8531c34e29bb3a5ef72a7ccd5b";

List<Category> getCategories() {
  List<Category> categories = new List<Category>();

  Category addCategory = new Category();
  addCategory.categoryName = 'Business';
  addCategory.imgUrl =
      'https://images.pexels.com/photos/461077/pexels-photo-461077.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  categories.add(addCategory);

  Category addCategory1 = new Category();
  addCategory1.categoryName = 'General';
  addCategory1.imgUrl =
      'https://images.pexels.com/photos/6335/man-coffee-cup-pen.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  categories.add(addCategory1);

  Category addCategory2 = new Category();
  addCategory2.categoryName = 'Technology';
  addCategory2.imgUrl =
      'https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  categories.add(addCategory2);

  Category addCategory3 = new Category();
  addCategory3.categoryName = 'Entertainment';
  addCategory3.imgUrl =
      'https://images.pexels.com/photos/265685/pexels-photo-265685.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  categories.add(addCategory3);

  return categories;
}
