import 'package:flutter/material.dart';
import 'package:flutter_food_app/product_details.dart';

class PopularListView extends StatefulWidget {
  @override
  _PopularListViewState createState() => _PopularListViewState();
}

class _PopularListViewState extends State<PopularListView> {
  var popularList = List<PopularData>();

  @override
  void initState() {
    addDummyDataInList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ListView.builder(
        itemCount: popularList.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    border: Border.all(color: Colors.transparent, width: 0.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/crown.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'top of the week',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        popularList[index].itemName,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        popularList[index].weight,
                        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetails()));
                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        child: Center(
                          child: Icon(Icons.add),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  popularList[index].image,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
  
  void addDummyDataInList() {

    for(int i=0;i<10;i++){
      popularList.add(PopularData(
        image: 'assets/images/piza.png',
        itemName: 'Primavera Pizza',
        weight: 'Weight 540 gr',
        rating: '5.0',
      ));
    }
  }
}

class PopularData {
  String image;
  String itemName;
  String weight;
  String rating;

  PopularData({this.image, this.itemName, this.weight, this.rating});
}