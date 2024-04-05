import 'package:flutter/material.dart';
import 'package:food_app/api/api.dart';
import 'package:food_app/models/news_model.dart';

class NewsScreenPage extends StatefulWidget {
  const NewsScreenPage({super.key});

  @override
  State<NewsScreenPage> createState() => _NewsScreenPageState();
}

class _NewsScreenPageState extends State<NewsScreenPage> {
  @override
  Widget build(BuildContext context) {
    final Api _api = Api();
    return Scaffold(
      appBar: AppBar(
        title: Text("Api News"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: _api.fetchNews(),
            builder:
                (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return SizedBox(
                  height: 600,
                  child: ListView.builder(
                      itemCount: snapshot.data?.articles?.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('third_page', arguments: {
                                  'title':
                                      snapshot.data?.articles?[index].title,
                                  'desc': snapshot
                                      .data?.articles?[index].description,
                                  'image':
                                      snapshot.data?.articles?[index].urlToImage
                                });
                              },
                              child: Image.network(
                                  snapshot.data?.articles?[index].urlToImage ??
                                      'N/A'),
                            ),
                            Text(
                              snapshot.data?.articles?[index].author ?? "N/A",
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data?.articles?[index].description ??
                                    "N/A",
                              ),
                            ),
                            Text(
                              snapshot.data?.articles?[index].title ?? "N/A",
                            ),
                          ],
                        );
                      }),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
