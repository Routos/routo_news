import 'package:flutter/material.dart';
import 'package:routonews/helper/data.dart';
import 'package:routonews/model/category_model.dart';
import 'package:routonews/widget/cateory_button.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Category> categories = new List<Category>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Routo Daily News',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return CategoryButton(
                        title: categories[index].categoryName,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
