import 'package:flutter/material.dart';

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Feedback'),
        backgroundColor: Colors.amber[700],
      ),
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
              SizedBox(height: 45),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Your email'),
                    prefixIcon: Icon(Icons.person_outline),
                    prefixIconColor: Colors.grey.shade800,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade800)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.grey.shade900, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Your message'),
                    prefixIcon: Icon(Icons.message_outlined),
                    prefixIconColor: Colors.grey.shade800,
                    fillColor: const Color.fromARGB(255, 235, 235, 235),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade800)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.grey.shade900, width: 2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber[700],
                  child: Text('Send'),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Or contact us via  :',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook_outlined,
                    size: 35,
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    Icons.telegram,
                    size: 35,
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    Icons.phone,
                    size: 35,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
