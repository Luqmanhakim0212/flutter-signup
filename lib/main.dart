import 'package:flutter/material.dart';
import 'page/mainscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  String dropdownvalue = "Male";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome to MyApp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Center(
                    child: new Image.asset('beats-by-dre-cool-logo.jpg',height: 300, width: 300,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: 'Name',
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: 'Email',
                      decoration: InputDecoration(
                        labelText: 'Your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: 'Password',
                      decoration: InputDecoration(
                        labelText: 'Your Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  //Dropdown
                  Container(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        value: dropdownvalue,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 16,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                        items: <String>['Male', 'Female', 'Others', 'Free']
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                        }).toList(),
                      ),
                    ),
                  ),

                  //Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                      final snackBar = SnackBar(
                        content: const Text('You have signed-in successfully'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('SIGN-UP'),
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
