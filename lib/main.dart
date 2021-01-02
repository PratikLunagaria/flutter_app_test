import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "HELLO",
        theme: ThemeData(primarySwatch:Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  "Hello world bar",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[800]
                  )
              ),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(
                builder: (context) => Padding (
                    padding: EdgeInsets.all(20),
                    child: MyHomePage()
                )
            )
        )
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children:[
          Padding(
            padding: EdgeInsets.all(20),
            child: RaisedButton(
              child: Text('Contact us'),
              onPressed: () => contactUs(context)
            )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.network(
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350
            )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
                'Hello, World!',
                style: Theme.of(context).textTheme.headline1
            ),
          )
        ])

    );
  }

  void contactUs(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
              title: Text('Contact Us'),
              content: Text('Mail us at contactus@example.com'),
              actions:<Widget>[
                FlatButton(
                    child: Text('close'),
                    onPressed: () => Navigator.of(context).pop()
                )
              ]
          );
        }
    );
  }
}
