import 'package:api/screen/homescreen/homescreen_api.dart';
import 'package:flutter/material.dart';

import '../../model/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Product?productList;
  ProductModel? productList;

  @override
  void initState() {
    // TODO: implement initState
    getimageList();
    super.initState();
  }

  Future<void> getimageList() async {
    productList = await HomeScreenApi.getData();
    //imageList ??= [];
    //loader = false;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScren"),
      ),
      body: productList == null
          ? CircularProgressIndicator()
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                childAspectRatio: 0.86,
              ),
              itemCount: productList!.products!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              productList!.products![index].images.first
                                  .toString(),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            productList!.products[index].title.toString(),
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Text(
                                  "\$",
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                    productList!.products[index].price
                                        .toString(),
                                    style: TextStyle(color: Colors.orange)),
                                SizedBox(
                                  width: 70,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 10,
                                ),
                                Text(
                                  productList!.products[index].rating
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              }), // : ListView.builder(
      //     itemCount: productList!.products!.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         leading: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //                 productList!.products![index].images!.first.toString()),
      //         ),
      //       );
      //     }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
