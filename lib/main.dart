import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.green,
        foregroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );
    ButtonStyle buttonStyles = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60)
    );

    return Scaffold(
      appBar: AppBar(
        //button style
         backgroundColor: Theme.of(context).primaryColorLight,

        title: Text('Book List'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,

      ),

      body: Padding(

        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(

          child: Column(


            children: [

              Container(

                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/images/bongho_bondhu.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              // child: Image.asset('assets/images/jakaria.jpg'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" Oshomapto Attojiboni\n"
                                      "Sheikh Mujibur Rahman", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage("")) );

                                  }, child: Text("bye naw"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/images/dopamin.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              // child: Image.asset('assets/images/jakaria.jpg'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" dopamin detox\n"
                                      "thibaut meurisse", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage1("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/images/paradoxical-sajid.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              // child: Image.asset('assets/images/jakaria.jpg'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" Paradoxical-sajid\n"
                                      "Arif Azad", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage2("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/images/Bela-Furabar-Agey.png'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              // child: Image.asset('assets/images/jakaria.jpg'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" Bela-Furabar-Agey\n"
                                      "Arif Azad", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage3("")) );

                                  }, child: Text("but now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),






            ],
          ),
        ),
      ),




    );
  }
}
class BuyNowPage extends StatelessWidget {
  final String bookName;

  const BuyNowPage(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/bongho_bondhu.jpg'),// Replace with actual book cover image URL


            Text('Author: Sheikh Mujibur Rahman'),
            Text('Description:Inspired by his wife, Fazilatunnesa Mujib, Mujib started writing his autobiography in his notebooks during his sojourns in jail as a state prisoner between 1967 and 1969.[2] Later Mujib gave the notebooks to Moni to prepare a typed copy. But after the assassination of Sheikh Mujib and Sheikh Fazlul Haq Moni, the notebooks slid in oblivion and remained so until one of his relatives discovered four notebooks in a drawer of Sheikh Moni in 2004.[3] By then, the notebooks'),
            Text('Price: 250 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/bKash.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/masterCard.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Rocket.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Nagad.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" masterCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nogod"),

                )
              ],

            ),

            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','masterCard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {

              },
              hint: Text('Select an option'),
            ),



        SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
class BuyNowPage1 extends StatelessWidget {
  final String bookName;

  const BuyNowPage1(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/dopamin.jpg'),// Replace with actual book cover image URL


            Text('Author: thibaut meurisse'),
            Text('Description: Do you hesitate to do any work? Do you often feel restless within yourself and unable to focus on any task at hand? Not attracting important goals that can positively change your life?'),
            Text('Price: 480 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/bKash.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/masterCard.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Rocket.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Nagad.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" masterCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nogod"),

                )
              ],

            ),
            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','masterCard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNowPage2 extends StatelessWidget {
  final String bookName;

  const BuyNowPage2(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/paradoxical-sajid.jpg'),// Replace with actual book cover image URL


            Text('Author: Arif-Azad'),
            Text('Description: The present age is the age of presentation. But a lot depends on how you present a thing, how easily, how fluently, how sweetly. Naturally, humans have a tendency to digest theory very little. They want simplicity.'),
            Text('Price: 350 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/bKash.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/masterCard.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Rocket.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.asset('assets/images/Nagad.png'),

                )
              ],

            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}