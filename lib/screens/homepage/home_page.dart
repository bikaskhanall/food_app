import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/favourite_model.dart';
import 'package:food_app/screens/cart/my_cartpage.dart';
import 'package:food_app/screens/news/news_screen_page.dart';
import 'package:food_app/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

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
                        builder: (context) => const NewsScreenPage(),
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
          GestureDetector(
            onTap: () {},
            child:
                Consumer<HomeProvider>(builder: (context, homeProvider, child) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12,
                            mainAxisExtent: 300),
                    itemCount: homeProvider.favList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16.4)),
                              child: Image.asset(
                                "${gridMap.elementAt(index)['image']}",
                                height: 170,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "${gridMap.elementAt(index)['title']}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .merge(const TextStyle(
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  const SizedBox(
                                    height: 8.4,
                                  ),
                                  Text(
                                    "${gridMap.elementAt(index)['price']}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .merge(const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(CupertinoIcons.heart)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(CupertinoIcons.cart)),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              );
            }),
          )
        ]),
      ),
    );
  }
}
