import 'package:anticorruptionapp/Screens/Form_Screen.dart';
import 'package:anticorruptionapp/Screens/NagarpalikaOda_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double? width;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Anti Corruption Nepal'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          option1(context),
          option2(),
          option3(),
          option4(),
          form(context),
        ]),
      ),
    );
  }
}

Widget option1(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: SizedBox(
      width: width,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.amber,
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NagarpalikaOdaBibaran()),
  );
        },
        child: const Text("नगरपलिका / वडा सम्बन्धि कामहरुको विवरण",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
            ),
      ),
    ),
  );
}

Widget option2() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: SizedBox(
      width: width,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 39, 97, 41),
          onPrimary: Colors.amber,
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {},
        child: const Text(
          "जिल्ला प्रशासन कार्यालय सम्बन्धि कामहरुको विवरण",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget option3() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: SizedBox(
      width: width,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 171, 41, 31),
          onPrimary: Colors.amber,
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {},
        child: const Text("घरेलु सम्बन्धि कामहरुको विवरण",
            style: TextStyle(
              fontSize: 20,
            )),
      ),
    ),
  );
}

Widget option4() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: SizedBox(
      width: width,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 107, 176),
          onPrimary: Colors.amber,
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {},
        child: const Text(
          "जिल्ला शिक्षा कार्यालय सम्बन्धि कामहरुको विवरण",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget form(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: SizedBox(
      width: width,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.amber,
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DataStoreForm()),
          );
        },
        child: const Text("घुस उजुरी फारम",
            style: TextStyle(
              fontSize: 20,
            )),
      ),
    ),
  );
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/logo.png'))),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.sunny),
            title: Text('Dark Mode'),
          ),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle),
            title: const Text('About Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
