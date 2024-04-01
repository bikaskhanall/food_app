import 'package:flutter/material.dart';
import 'package:food_app/my_cartpage.dart';
import 'package:food_app/screens/homepage/favourite_item_widget.dart';
import 'package:food_app/screens/homepage/favourite_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FavModel> favList = [
    FavModel(
      image: "assets/images/normal.jpeg",
      title: "Chicken Burger",
    ),
    FavModel(
      image: "assets/images/premiumburger.jpeg",
      title: "Buff Burger",
    ),
    FavModel(
      image: "assets/images/coke.jpeg",
      title: "Juice",
    ),
    FavModel(
      image: "assets/images/wraps.jpeg",
      title: "Wrap",
    ),
  ];
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 173, 82, 1),
              ),
              child: Center(child: Text('Order Your Food')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: const Icon(
                  Icons.man,
                ),
                title: const Text('Order'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(
              height: 420,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: const Icon(
                  Icons.call,
                ),
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCart()));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Find and Order\nFood For You',
                style: TextStyle(fontSize: 35),
              ),
            ],
          ),

          // Consumer<BookmarkProvider>(
          //     builder: (context, bookmarkprovider, child) {
          //   return GestureDetector(
          //     child: Icon(bookmarkprovider.isLiked
          //         ? Icons.heart_broken
          //         : Icons.heart_broken_outlined),
          //     onTap: () {
          //       bookmarkprovider.updateBookmark();
          //     },
          //   );
          // }),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const AddPage()));
          //   },
          //   child: const Text("Next Page"),
          // ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: "Search Your Burger",
            ),
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 80,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('All'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.food_bank,
                    size: 24.0,
                  ),
                  label: const Text('Burgers'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Wraps'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.food_bank,
                    size: 24.0,
                  ),
                  label: const Text('Burgers'),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Order",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 10),
            child: Column(
              children: [
                ListView.separated(
                  itemBuilder: ((context, index) {
                    return FavouriteItemmWidget(
                      favModel: favList[index],
                    );
                  }),
                  separatorBuilder: ((context, index) => const SizedBox(
                        height: 10,
                      )),
                  itemCount: favList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}