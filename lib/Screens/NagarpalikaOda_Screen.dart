import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const NagarpalikaOdaBibaran());
}

class NagarpalikaOdaBibaran extends StatelessWidget {
  const NagarpalikaOdaBibaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _headerStyle = TextStyle(
        color: Color.fromARGB(255, 38, 38, 38),
        fontSize: 18,
        fontWeight: FontWeight.bold);
    const _contentStyle = TextStyle(
      color: Color.fromARGB(255, 38, 38, 38),
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );
    const _contentHeadingStyle = TextStyle(
      color: Color.fromARGB(255, 38, 38, 38),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagarpalika Oda Bibaran',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 195, 195),
        appBar: AppBar(
          title: const Text('नगरपलिका / वडा सम्बन्धि कामहरुको विवरण'),
          backgroundColor: Colors.green,
        ),
        body: Accordion(
          maxOpenSections: 2,
          headerBackgroundColorOpened: Colors.white,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          contentHorizontalPadding: 5,
          contentVerticalPadding: 0,
          children: [
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('छात्रबृत्ति शिफारिस स्वदेशी अध्ययनका लागि',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '१) विधार्थिको परिचय खुल्ने कागजात\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोही दिन\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              //content: Text('आवश्यक कागजातहरु' '१) विधार्थिको परिचय खुल्ने कागजात', style: _contentStyle),
              headerBorderRadius: 10,
              //contentBorderWidth: 1,
              // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('अस्थायी वसोवास शिफारिस', style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '१) नागरिकता प्रमाणपत्रको प्रतिलिपि\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '२) घरधनीको शिफारिस\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोही दिन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'स्वदेशी २,००० विदेशी ५,०००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('विद्युत जडान शिफारिस (नक्सा पास नभएको)',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '१) नागरिकता प्रमाणपत्रको प्रतिलिपि\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '२) जग्गा धनी प्रमाण पुर्जाको प्रतिलिपि\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोही दिन / सर्जमिनको हकमा ३ दिन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '१०,०००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('कमजोर आर्थिक अवस्था सम्बन्धी शिफारिस',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '१) नागरिकता प्रमाणपत्रको प्रतिलिपि\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोही दिन / सर्जमिनको हकमा ३ दिन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'निःशुल्क\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('छात्रवृत्ति शिफारिस वैदेशिक अध्ययनका लागि',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '१) विधार्थिको परिचय खुल्ने कागजात\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '१००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('विपन्न विद्यार्थी छात्रबृत्ति शिफारिस',
                  style: _headerStyle),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'आवश्यक कागजातहरु \n',
                        style: TextStyle(
                          color: Color.fromARGB(255, 38, 38, 38),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '१) विधार्थिको परिचय खुल्ने कागजात\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 97, 97),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nजिम्मेवार अधिकारी \n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 38, 38, 38),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'वडा अध्यक्ष\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 97, 97),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nगुनसो सुन्ने अधिकारी \n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 38, 38, 38),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'प्रमुख\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 97, 97),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nसेवा समय \n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 38, 38, 38),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'सोहि दिन / सर्जमिनको हकमा ३ दिन\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 97, 97),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: '\nसेवा शुल्क \n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 38, 38, 38),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'निःशुल्क\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 97, 97, 97),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              headerBorderRadius: 10,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('अंगीकृत नागरिकता शिफारिस', style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text:
                              '१) अंगिकृत नागरिकता प्राप्त गर्न खोजेको स्पष्ट आधार र जिल्ला प्रशासन कार्यालयबाट जारी भएको तोकिएको ढाचाको निवेदन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text:
                              '२) नागरिकता परित्याग गर्न खोजेको पुष्टि गर्ने कागजातहरु\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text:
                              '३) नेपालमा १५ वर्षदेखी कुनै व्यवसाय वा काम गरी वसेको प्रमाणपत्रको प्रतिलिपि\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text:
                              '४) नेपाली भाषा लेख्न र वोल्न जान्ने प्रमाण कागजातहरु\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '५) पासपोर्ट साईजको फोटो ३ प्रति\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोहि दिन / सर्जमिनको हकमा ३ दिन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '१०,०००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
              contentHorizontalPadding: 2,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('स्थायी बसोवास शिफारिस', style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '''१) नागरिकता प्रमाणपत्रको प्रतिलिपि
२) बसाई सरी आएकाको हकमा बसाइ सराइ प्रमाण पत्रको प्रतिलिपि\n''',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        // TextSpan(
                        //   text: '\nसेवा समय \n',
                        //   style: TextStyle(
                        //     color: Color.fromARGB(255, 38, 38, 38),
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // TextSpan(
                        //   text: 'सोहि दिन / सर्जमिनको हकमा ३ दिन\n',
                        //   style: TextStyle(
                        //     color: Color.fromARGB(255, 97, 97, 97),
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.normal,
                        //   ),
                        // ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '५००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
              contentHorizontalPadding: 2,
            ),
            AccordionSection(
              isOpen: false,
              contentBorderColor: Colors.white,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Color.fromARGB(255, 221, 221, 221),
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              header: Text('विद्यूत जडान शिफारिस (नक्सा पास भएको)', style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: _contentHeadingStyle,
                      children: [
                        TextSpan(
                          text: '''१) नागरिकता प्रमाणपत्रको प्रतिलिपि
२) जग्गा धनी प्रमाण पुर्जाको प्रतिलिपि
३) भवन निर्माण ईजाजत प्रमाण पत्रको प्रतिलिपि\n''',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nजिम्मेवार अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'वडा अध्यक्ष\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nगुनसो सुन्ने अधिकारी \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'प्रमुख\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा समय \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'सोहि दिन / सर्जमिनको हकमा ३ दिन\n',
                          style: _contentStyle,
                        ),
                        TextSpan(
                          text: '\nसेवा शुल्क \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '१,०००\n',
                          style: _contentStyle,
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
              contentHorizontalPadding: 2,
            ),
          ],
        ),
      ),
    );
  }
}
