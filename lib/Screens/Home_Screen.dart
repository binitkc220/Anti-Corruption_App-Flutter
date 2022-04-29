import 'package:anticorruptionapp/Screens/Form_Screen.dart';
import 'package:anticorruptionapp/Screens/JiPraKa_Screen.dart';
import 'package:anticorruptionapp/Screens/NagarpalikaOda_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

double? width;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Anti Corruption Nepal',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
      // Theme mode depends on device settings at the beginning
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List textList = [
    'नगरपलिका / वडा सम्बन्धि कामहरुको विवरण',
    'जिल्ला प्रशासन कार्यालय सम्बन्धि कामहरुको विवरण',
    'घरेलु सम्बन्धि कामहरुको विवरण',
    'जिल्ला शिक्षा कार्यालय सम्बन्धि कामहरुको विवरण',
    'घुस उजुरी फारम'
  ];
  List navigateOptionList = [
    NagarpalikaOdaBibaran(),
    JiPraKaBibaran(),
    Text('Coming soon'),
    Text('comsdf'),
    DataForm()
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Anti Corruption Nepal'),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                icon: const Icon(Icons.lightbulb),
                onPressed: () {
                  Get.isDarkMode
                      ? Get.changeTheme(ThemeData.light())
                      : Get.changeTheme(ThemeData.dark());
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/political_map_of_nepal.png')),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  itemCount: textList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return optionCard(
                        context, textList[index], navigateOptionList[index]);
                  }),
            ],
          ),
        ));
  }
}

Widget optionCard(BuildContext context, String text, Widget navigateTo) {
  return Container(
    padding: EdgeInsets.all(12),
    height: 100,
    child: ElevatedButton(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 125, 125, 125),
          onPrimary: Color.fromARGB(255, 241, 244, 245),
          shadowColor: Colors.grey,
          elevation: 20,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo),
          );
        }),
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
