import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter45/utils/commons.dart';

class FruitBasketStateFul extends StatefulWidget {
  @override
  _FruitBasketState createState() => _FruitBasketState();
}

class _FruitBasketState extends State<FruitBasketStateFul> {
  List<String> myFruitBasket = [
    "pears",
    "apples",
    "lemons",
    "watermelon",
    "oranges",
    "bananas"
  ];

  @override
  void initState() {
    super.initState();
  }

  List _shuffleFruitBasket(List fruitBasket) {
    var random = new Random();

    for (var i = fruitBasket.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);

      var temp = fruitBasket[i];
      fruitBasket[i] = fruitBasket[n];
      fruitBasket[n] = temp;
    }

    return fruitBasket;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Fruit Basket Stateful',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          backgroundColor: Commons.appBarBackGroundColor,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: Column(
          children: <Widget>[
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 1.0,
                    ),
                    child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 65,
                          child: Container(
                            color: Colors.white70,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                myFruitBasket[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    fontFamily: 'Roboto'),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        )));
              },
              itemCount: myFruitBasket.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
            _shuffleButton(),
          ],
        ));
  }

  Widget _shuffleButton() {
    return InkWell(
        onTap: () {
          myFruitBasket = _shuffleFruitBasket(myFruitBasket);
          setState(() {});
        },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 13),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Commons.mainFlutter45,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: Commons.mainFlutter45, spreadRadius: 1)
              ],
            ),
            child: Text(
              'Shuffle Fruit',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ));
  }
}
