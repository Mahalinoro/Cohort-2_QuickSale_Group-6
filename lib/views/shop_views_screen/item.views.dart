import 'package:flutter/material.dart';
import 'package:quicksale/models/product.dart';

class Item extends StatelessWidget {
  final Product product;

  Item({this.product});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF9BA9FF),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 211.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/itemBack.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Container(
                width: 350,
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white54),
                child: Column(
                  children: [
                    SizedBox(
                      height: 180,
                      child: Image(
                      image: AssetImage(product.photoURL),  
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(product.title,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'MartelSans')),
                        ),
                        Expanded(
                          child: Text(product.price,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'MartelSans')),
                        ),
                      ],
                    ),
                    Row(children: [
                      Text('Vendor | ${product.vendorName}',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'MartelSans')),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Text('Description',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MartelSans')),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      child: Text(
                          product.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'MartelSans')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        child: Text("Add to Cart"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF9BA9FF)),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12)),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
