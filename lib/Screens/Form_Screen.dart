import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class DataStoreForm extends StatelessWidget {
  const DataStoreForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: DataForm());
  }
}

class DataForm extends StatefulWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  State<DataForm> createState() => DataFormState();
}

class DataFormState extends State<DataForm> {
  File? file;
  String fileresponsemssg = "  No File Selected!";
  bool filestatus_ = true;

  late TextEditingController _valueNameController,
      _valueghusdineNameController,
      _valueghuslineNameController,
      _valueghuslinePostController,
      _valueKaryalayaNameController,
      _valuebivagNameController,
      _valuepalikaNameController,
      _valuebistritbibaranController;
  String? districtdropdownValue;
  late bool status_;
  late String message;
  String serverURL =
      "https://binitkc-flutter-database.000webhostapp.com/go.php";

  @override
  void initState() {
    _valueNameController = TextEditingController();
    _valueghusdineNameController = TextEditingController();
    _valueghuslineNameController = TextEditingController();
    _valueghuslinePostController = TextEditingController();
    _valueKaryalayaNameController = TextEditingController();
    _valuebivagNameController = TextEditingController();
    _valuepalikaNameController = TextEditingController();
    _valuebistritbibaranController = TextEditingController();
    status_ = false;
    message = "";

    super.initState();
  }

  Future _uploadFiles() async {
    try {
      if (_valueghusdineNameController.text.isEmpty)
      {
        setState(() {
        fileresponsemssg = " घुस लिने कर्मचारीको नाम र पद लेखिदिनुहोला";
        filestatus_ = true;
      });
        print("Field is empty!");
      }
      else{
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc', 'mp3', 'm4a', 'mp4', 'avi', 'wav', 'heic'],
      );
      PlatformFile file = result!.files.first;
      setState(() {});
      String? filepath = result.files.first.path;
      String filePath = filepath.toString();
      String? fileName = file.name;
      print('${file.path}, ${file.name}');

      FormData formData = FormData.fromMap({
        "ghus_line": _valueghuslineNameController.text,
        "post": _valueghuslinePostController.text,
        "file": await MultipartFile.fromFile(filePath, filename: fileName),
      });
      setState(() {
        fileresponsemssg = "  Uploading...";
        filestatus_ = true;
      });
      Response response3 = await Dio().post(
          "https://binitkc-flutter-database.000webhostapp.com/file_upload.php",
          data: formData);
      print("File upload response: $response3");
      setState(() {
        fileresponsemssg = response3.data["message"];
        filestatus_ = true;
      });
      print(fileresponsemssg);}
    } catch (e) {
      print("Exception caught : $e");
    }
  }

  Future<void> SubmitData() async {
    try {
      var response = await http.post(Uri.parse(serverURL), body: {
        "name": _valueNameController.text,
        "ghus_dine": _valueghusdineNameController.text,
        "ghus_line": _valueghuslineNameController.text,
        "post": _valueghuslinePostController.text,
        "karyalaya": _valueKaryalayaNameController.text,
        "bivag": _valuebivagNameController.text,
        "district": districtdropdownValue,
        "palika": _valuepalikaNameController.text,
        "bistrit_bibaran": _valuebistritbibaranController.text,
      });
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        print(response.body);
        var data = json.decode(response.body);
        var responseMessage = data["message"];
        var responseError = data["error"];
        if (responseError) {
          setState(() {
            status_ = false;
            message = responseMessage;
          });
        } else {
          _valueNameController.clear();
          _valueghusdineNameController.clear();
          _valueghuslineNameController.clear();
          _valueghuslinePostController.clear();
          _valueKaryalayaNameController.clear();
          _valuebivagNameController.clear();
          _valuepalikaNameController.clear();
          _valuebistritbibaranController.clear();
          setState(() {
            status_ = true;
            message = responseMessage;
          });
        }
      } else {
        setState(() {
          message = "Error: Server Error";
          status_ = false;
        });
      }
    } catch (e) {
      print("District not selected");
      print(e);
      setState(() {
        message = "कृपया * लगाइएका फिल्डहरु अनिवार्य रुपमा भरिदिनुहोला ।";
        status_ = false;
      });
    }
  }

  Widget _buildNameTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valueNameController,
        decoration: const InputDecoration(
            labelText: 'हजुरको नाम (यदि खुलाउन चाहेमा)',
            labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.name,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildghusdineNameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valueghusdineNameController,
        decoration: const InputDecoration(
            labelText: 'घुस दिने व्यक्तिको नाम (घुस दिन खोजिएको हो भने)',
            labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildghuslineNameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valueghuslineNameController,
        decoration: const InputDecoration(
            labelText: 'घुस लिने कर्मचारीको नाम *',
            labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildghuslinePostField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valueghuslinePostController,
        decoration: const InputDecoration(
            labelText: 'घुस लिने कर्मचारीको पद *',
            labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildkaryalaNameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valueKaryalayaNameController,
        decoration: const InputDecoration(
            labelText: 'कार्यालयको नाम *', labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildbivagNameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valuebivagNameController,
        decoration: const InputDecoration(labelText: 'विभाग'),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildDistrictField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      alignment: Alignment.centerLeft,
      child: DropdownButton<String>(
        hint: Text('जिल्ला *'),
        value: districtdropdownValue,
        icon: Container(
          alignment: Alignment.centerRight,
          child: const Icon(Icons.arrow_downward),
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            districtdropdownValue = newValue!;
          });
        },
        items: <String>['काठमान्डौ', 'ललितपुर', 'बाँके']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildpalikaNameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valuepalikaNameController,
        decoration: const InputDecoration(
            labelText: 'महानगरपालिका / नगरपालिका / गाँउपालिका *'),
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildbistritbibaranTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: _valuebistritbibaranController,
        decoration: const InputDecoration(
            labelText: 'विस्तृत विवरण',
            labelStyle: TextStyle(fontSize: 18)),
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("घुस उजुरी फारम"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: const Text(
                  "* लगाइएका फिल्डहरु अनिवार्य हुन् ।",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            _buildNameTextField(),
            _buildghusdineNameField(),
            _buildghuslineNameField(),
            _buildghuslinePostField(),
            _buildkaryalaNameField(),
            _buildbivagNameField(),
            _buildDistrictField(),
            _buildpalikaNameField(),
            _buildbistritbibaranTextField(),
            const SizedBox(height:15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "सम्बन्धित प्रमाणहरु (जस्तै फोटो, भिडियो, अडियो)",
                style: TextStyle(
                    fontSize: 18),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      _uploadFiles();
                    },
                    child: const Text("Upload"),
                  ),
                ),
                Expanded(
                  child: Text(
                    filestatus_ ? fileresponsemssg : fileresponsemssg,
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "(धेरै फाइलहरु छ भने एकैचोटि हाल्नुहोला)",
                style: TextStyle(
                    color: Color.fromARGB(255, 109, 107, 107),
                    fontSize: 17),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height:20),
            SizedBox(
              width:200.0,
              height:50.0,
              child: ElevatedButton(
              onPressed: () {
                setState(() {});
                SubmitData();
              },
              child: const Text("Submit",style:TextStyle(fontSize: 18,)),
            ),),
            Text(
              status_ ? message : message,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
