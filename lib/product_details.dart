import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        border: Border.all(color: Colors.grey, width: 1.0)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.yellow, width: 1.0)),
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Primavera Pizza',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\$5.99',
              style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        getLabelTextView('Size'),
                        SizedBox(
                          height: 5,
                        ),
                        getValueTextView('Medium 14\"'),
                        SizedBox(
                          height: 20,
                        ),
                        getLabelTextView('Crust'),
                        SizedBox(
                          height: 5,
                        ),
                        getValueTextView('Thin Crust'),
                        SizedBox(
                          height: 20,
                        ),
                        getLabelTextView('Delivery in'),
                        SizedBox(
                          height: 5,
                        ),
                        getValueTextView('30 min'),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/piza.png',
                    height: 150,
                    width: 150,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            getValueTextView('Ingredients'),
            SizedBox(
              height: 20,
            ),
            getIngredientsListView(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0, ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color:  Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)
                    ),

                    border: Border.all(color: Colors.transparent, width: 1.0)),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Place an Order',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  getLabelTextView(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
    );
  }

  getValueTextView(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  getIngredientsListView(){
    return Container(
      height: 120,
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              height: 50,
              width: 100,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:  Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  border: Border.all(color: Colors.transparent, width: 1.0)),
              child: Center(
                child:  Image.asset(
                  'assets/images/pizza.png',
                  height: 50,
                  width: 50,
                ),
              ),
            );
          }),
    );

  }
}
