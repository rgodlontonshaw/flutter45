import 'package:flutter/material.dart';
import 'package:flutter45/utils/commons.dart';

class FruitBasketStateless extends StatelessWidget {
  final List<String> myFruitBasket = [
    "pears",
    "apples",
    "lemons",
    "watermelon",
    "oranges",
    "bananas"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Fruit Basket Stateless',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor: Commons.appBarBackGroundColor,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView.builder(
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
    );
  }
}
