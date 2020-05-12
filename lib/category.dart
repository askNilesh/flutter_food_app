import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  @override
  _CategoryListViewState createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  var categoryList = List<CategoriesData>();

  @override
  void initState() {
    addDummyDataInList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        itemCount: categoryList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    categoryList.forEach((element) {
                      element.isSelected = false;
                    });
                    categoryList[index].isSelected = true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: categoryList[index].isSelected ? Colors.yellow : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      border: Border.all(color: Colors.transparent, width: 1.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        categoryList[index].image,
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        categoryList[index].categoryName,
                        style: TextStyle(
                          fontWeight:
                          categoryList[index].isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: null,
                            heroTag: null,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: categoryList[index].isSelected ? Colors.black : Colors.white,
                            ),
                            backgroundColor:
                            categoryList[index].isSelected ? Colors.white : Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
  void addDummyDataInList() {
    categoryList.add(
        CategoriesData(image: 'assets/images/pizza.png', categoryName: 'Pizza', isSelected: true));

    categoryList.add(CategoriesData(
      image: 'assets/images/seafood.png',
      categoryName: 'Seafood',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/food.png',
      categoryName: 'Soft Drinks',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/pizza.png',
      categoryName: 'Pizza',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/seafood.png',
      categoryName: 'Seafood',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/food.png',
      categoryName: 'Soft Drinks',
    ));

    categoryList.add(
        CategoriesData(image: 'assets/images/pizza.png', categoryName: 'Pizza', isSelected: false));

    categoryList.add(CategoriesData(
      image: 'assets/images/seafood.png',
      categoryName: 'Seafood',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/food.png',
      categoryName: 'Soft Drinks',
    ));

    categoryList.add(
        CategoriesData(image: 'assets/images/pizza.png', categoryName: 'Pizza', isSelected: false));

    categoryList.add(CategoriesData(
      image: 'assets/images/seafood.png',
      categoryName: 'Seafood',
    ));

    categoryList.add(CategoriesData(
      image: 'assets/images/food.png',
      categoryName: 'Soft Drinks',
    ));


  }
}
class CategoriesData {
  String image;
  String categoryName;
  bool isSelected = false;

  CategoriesData({this.image, this.categoryName, this.isSelected = false});
}
