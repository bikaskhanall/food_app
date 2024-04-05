import 'package:flutter/material.dart';
import 'package:food_app/screens/cart/my_cartpage.dart';
import 'package:food_app/screens/homepage/favourite_item_widget.dart';
import 'package:food_app/screens/news/news_screen_page.dart';
import 'package:food_app/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: const Icon(
                  Icons.man,
                ),
                title: const Text('Api News Model'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsScreenPage(),
                      ));
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
          Consumer<HomeProvider>(builder: (context, homeProvider, child) {
            return Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 10),
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  return FavouriteItemmWidget(
                    favModel: homeProvider.favList[index],
                  );
                }),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 10,
                    )),
                itemCount: homeProvider.favList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            );
          })
        ]),
      ),
    );
  }
}
