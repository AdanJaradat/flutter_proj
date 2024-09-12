import 'package:ecommerce/model/offers_data.dart';
import 'package:ecommerce/view/pages/living_tab/grid_page2.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 110),
              Container(
                padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Colors.amber[700],
                child: Text('Living Room :'),
              ),
              const SizedBox(height: 15),
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: OffersData.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 10, 6, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              OffersData.products[index].imgPath,
                              fit: BoxFit.contain,
                              width: 100,
                              height: 70,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              OffersData.products[index].name,
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${OffersData.products[index].price} JD',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              //!
              Container(
                padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Colors.amber[700],
                child: Text('Dining Room :'),
              ),
              const SizedBox(height: 15),
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: OffersData.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 10, 6, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              OffersData.products[index].imgPath,
                              fit: BoxFit.contain,
                              width: 100,
                              height: 70,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              OffersData.products[index].name,
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${OffersData.products[index].price} JD',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              //!
              const SizedBox(height: 25),

              Container(
                padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Colors.amber[700],
                child: Text('Out Door :'),
              ),
              const SizedBox(height: 15),
              Container(
                height: 160,
                margin: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: OffersData.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(6, 10, 6, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              OffersData.products[index].imgPath,
                              fit: BoxFit.contain,
                              width: 100,
                              height: 70,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              OffersData.products[index].name,
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${OffersData.products[index].price} JD',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
