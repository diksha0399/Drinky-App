import 'package:flutter/material.dart';
import 'package:drinky_app/src/models/products.dart';

List<Product> productsList = [
  Product(image: "coffee.png", name: 'Hot Drinks'),
  Product(image: "coffeeo.png", name: 'Cold Drinks')
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
                padding: EdgeInsets.all(50),
                child: Container(
                  height: 560,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(1, 1),
                            blurRadius: 4)
                      ]),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Icon(Icons.favorite_border,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(55, 5, 20, 5),
                            child: Text(
                              '${productsList[index].name}',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'EastSeaDokdo',
                              ),
                            ),
                          ),
                        ]),
                        Image.asset("assets/${productsList[index].image}",
                            height: 450, width: 200),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(100, 10, 20, 15),
                              child: Text(
                                'Tap to explore',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ));
          }),
    );
  }
}
