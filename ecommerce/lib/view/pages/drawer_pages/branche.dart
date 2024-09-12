import 'package:ecommerce/model/brach_data.dart';
import 'package:flutter/material.dart';

class Branche extends StatelessWidget {
  const Branche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Our Branches'),
        backgroundColor: Colors.amber[700],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 230, 228, 228),
        ),
        child: ListView.builder(
            itemCount: BrachData.branches.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.35,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 5),
                      Image.asset(
                        BrachData.branches[index].img,
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.22,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                      const SizedBox(height: 10),
                      Text(
                          '${BrachData.branches[index].name} - ${BrachData.branches[index].location}'),

                      const SizedBox(height: 15), //editing
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber[700],
                              ),
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.phone)),
                            ),
                            // const SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber[700],
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.location_on_outlined)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
