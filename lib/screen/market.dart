import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        surfaceTintColor: Colors.white,
        title: const Text(
          "Market",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Icon(Icons.notifications_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "   View My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity, // Make the container take full width
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                  ), // Set border color to green
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Here',
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Fruits"),
                  Text("Vegetables"),
                  Text("Meats"),
                  Text("Milk & Eggs"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('saveProduct')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                  if (snapshot.data!.docs.isEmpty) {
                    return const Center(
                      child: Text('No products found.'),
                    );
                  }
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          children: snapshot.data!.docs
                              .map((DocumentSnapshot document) {
                            Map<String, dynamic> data =
                                document.data() as Map<String, dynamic>;
                            return Container(
                              margin: const EdgeInsets.all(8),
                              child: SingleChildScrollView(
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 110,
                                      width: double.infinity,
                                      child: Image.network(
                                        data['imageLink'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: Column(
                                        // crossAxisAlignment:
                                        // CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data['name'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //SizedBox(height: 5),
                                          Text('${data['quantity']}'),
                                          Text('${data['price']}'),
                                          //Text(
                                          //  'Description: ${data['description']}'),
                                          const SizedBox(height: 50),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
