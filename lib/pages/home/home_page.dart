import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/models/product_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> addItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            onPressed: () {},
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shopping cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  backgroundColor: Colors.white),
            ),
            SizedBox(
              height: 18.0,
            ),
            _cartItem(),
            SizedBox(
              height: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Text(
                  "\$ 480.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery charge",
                  style: TextStyle(fontSize: 14.0),
                ),
                Text(
                  "\$ 40.00",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$ 40.00",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              color: Colors.cyan,
              height: 50.0,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text("PROCEED TO CHECKOUT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _cartItem() {
    return Container(
      height: 550,
      child: Expanded(
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Colors.white,
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 30),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        10,
                      )),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Image.asset(
                                  products[index].path,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100.0,
                              child: Text(
                                "Nike Air Max Tailwind IV SP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Colors.grey[300]),
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 15.0)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text("1",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Colors.blue[300]),
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 15.0)),
                                Spacer(),
                                Text("\$ 12.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
