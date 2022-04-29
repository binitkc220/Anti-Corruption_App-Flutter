import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const JiPraKaBibaran());
}

class JiPraKaBibaran extends StatelessWidget {
  const JiPraKaBibaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _headerStyle = const TextStyle(
        color: Color.fromARGB(255, 38, 38, 38),
        fontSize: 18,
        fontWeight: FontWeight.bold);

    return MaterialApp(
      title: 'Jilla Prasasan Karyalaya Bibaran',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 195, 195),
        appBar: AppBar(
          title: const Text('जिल्ला प्रशासन कार्यालय सम्बन्धि कामहरुको विवरण'),
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
              header: Text('वंशजको आधारमा नेपाली नागरिकता',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 38, 38),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '\nनिवेदक सम्बन्धित जिल्लाकै भएको हकमा: ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '''\n१. अनुसूची-१ को फाराममा वडा अध्यक्षको सिफारिश
२. बाबुको र आमाको नागरिकता र विवाहिता महिला भए पतिको नागरिकताको फोटोकपी । सो नभए दाजु वा वंशज खुल्ने तीन पुस्ता भित्रको नातेदारको नागरिकताको फोटोकपी र नाता प्रमाणित प्रमाण पत्र
३. बाबु, आमा वा नागरिकता भिड्ने व्यक्तिबाट सनाखत, सो नभए दाजु वा भाई वा तीनपुस्ता भित्रको नजिकको अभिभावकसँगको नाता प्रमाणित सहित सनाखत
४. उक्त प्रमाणहरु पेश हुन नसकेमा वंशज खुल्ने अन्य प्रमाणहरु
५. फोटो ३ प्रति (कर्मचारी परिवार भए ४ प्रति)
६. जन्मदर्ता, जन्ममिति खुल्ने शैक्षिक प्रमाण पत्र वा नाबालक परिचय पत्र ।\n''',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nअन्य जिल्लाबाट बसाइसराई गरी आउनेको हकमाः \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:'''१. स्थानीय पञ्जिकाधिकारीको कार्यालयबाट जारी भएको बसाइसराईको प्रमाणपत्र
२. जग्गाधनी प्रमाण पूर्जा 
३. घरको नक्सा पास प्रमाणपत्र 
४. पानी, विजुली, टेलिफोन महसुल कार्ड जस्ता घर बासको प्रमाण 
५. बसाइ सरेर आउनेहरुको लागि बसाइ सरी आएको जिल्लाबाट बाबु आमा वा सनाखत गर्ने व्यक्तिको नागरिकताको अभिलेख माग गरी सो को भिडेको अभिलेख प्राप्त हुनु पर्नेछ ।\n ''',
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
                          text: 'स.प्र.जि.अ./ प्रशासकीय / अधिकृत / ना.सु.\n',
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
                          text: 'स.प्र.जि.अ.को हकमा प्र.जि.अ. र अन्य कर्मचारीको हकमा स.प्र.जि.अ.\n',
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
                          text: 'प्रमाण पुगेकोमा सोही दिन\n',
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
                          text: 'रु. १०/- को टिकट\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
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
              header: Text('बैवाहिक अंगीकृत नागरिकता (महिलाका लागि)', style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 38, 38),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '''१. अनुसूची-७ को फाराममा वडा अध्यक्षको सिफारिश
२. पतिको नागरिकताको प्रतिलिपी
३. विवाह दर्ता प्रमाणपत्रको प्रतिलिपी
४. विदेशी नागरिकता परित्याग गर्न कारवाही चलाएको प्रमाण
५. पतिको सनाखत, पति नभएमा पतिको नाता भिडने नजिकको नातेदारको सनाखत
६. श्यामश्वेत फोटो २ प्रति (कर्मचारी परिवार भए ४ प्रति)
७. भिसा लाग्ने देशको महिला भए मान्य अवधीको भिसा ।''',
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
                          text: 'स. प्र. जि. अ. / प्रकाशकिय अधिकृत / ना.सु.\n',
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
                          text: 'स. प्र. जि. अ. को हकमा प्र. जि. अ. र अन्य कर्मचारीको हकमा स. प्र. जि. अ.\n',
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
                          text: 'प्रमाण पुगेको सोही दिन\n',
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
                          text: 'रु १०/- को टिकट\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
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
              header: Text('कर्मचारी परिवारको आधारमा नागरिकता',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 38, 38),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '''१. जिल्लामा कार्यरत नेपाल सरकारको स्थायी कर्मचारी, सरकारी संस्थान, विश्वविद्यालयमा वा सामुदायिक विद्यालयमा कार्यरत स्थायी शिक्षकका परिवार भए सम्बन्धित निकायको सिफारिस पत्र र कर्मचारीको परिचयपत्रको फोटोकपी
२. अनुसूची १ - वंशज र अनुसूची ७ – वैवाहिक अंगीकृतको स्थानीय तहबाट
सिफारिस फाराम
३. अटो साइजको फोटो २ प्रति (वंशज), ५ प्रति(वैवाहिक अंगीकृतका लागि)
४. पिता/पति वा नजिकको नातेदारको ना.प्र. सहित सनाखत
५. जन्ममिति खुल्ने शैक्षिक प्रमाण पत्र वा जन्मदर्ता वा नाबालक परिचय पत्र
६. विवाहित महिला भए विवाहदर्ता प्रमाणपत्र र पतिको नागरिकताको प्रमाणपत्र।\n''',
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
                          text: 'स. प्र. जि. अ. / प्रकाशकिय अधिकृत / ना.सु.\n',
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
                          text: 'स. प्र. जि. अ. को हकमा प्र. जि. अ. र अन्य कर्मचारीको हकमा स. प्र. जि. अ.\n',
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
                          text: 'प्रमाण पुगेको सोही दिन\n',
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
                          text: 'रु १०/- को टिकट\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
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
              header: Text('वंशजको नागरिकता प्रतिलिपी',
                  style: _headerStyle),
              content: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                      text: 'आवश्यक कागजातहरु \n',
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 38, 38),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '\nकाठमाडौं जिल्लाको हकमा : ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '''\n१. अनुसूची फाराम सम्बन्धित स्थानीय तहबाट सिफारिस र फोटो ३ प्रति 
२. नागिरकता प्रमाणपत्र नम्बर एवम् जारी मिति खुलेको प्रमाण र सो को प्रतिलिपी ।\n''',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nअन्य जिल्लाबाट जारी भएको नागरिकताको प्रतिलिपी लिन परेमा : \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:'''१. बसाइसराई दर्ता प्रमाण पत्र सक्कल तथा प्रतिलिपी 
२. घर जग्गा स्थायी बसोवास लालपुर्जा सक्कल तथा प्रतिलिपी 
३. जारी भएको जिल्लाको अभिलेख भिडेको प्रमाण ।\n ''',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nकर्मचारी परिवारको हकमा : ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '''\n१. सम्बन्धित कार्यालयको सिफारिस पत्र 
२. जारी भएको जिल्लाबाट अभिलेख भिडेको प्रमाण 
३. कर्मचारीको परिचयपत्रको फोटोकपी ।\n''',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: '\nपतिको नामथर समावेश गरी प्रतिलिपी लिन : \n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 38),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:'''१. पतिको सक्कल नागिरकताको प्रमाणपत्र र सनाखतको लागि उपस्थिति 
२. विवाह दर्ता सक्कल तथा प्रतिलिपी 
३. अन्य जिल्लाबाट नागरिकता प्रमाणपत्र जारी भएको भए सम्बन्धित जिल्लाबाट अभिलेख भिडेको प्रमाण ।\n ''',
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
                          text: 'स.प्र.जि.अ./ प्रशासकीय / अधिकृत / ना.सु.\n',
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
                          text: 'स.प्र.जि.अ.को हकमा प्र.जि.अ. र अन्य कर्मचारीको हकमा स.प्र.जि.अ.\n',
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
                          text: 'प्रमाण पुगेकोमा सोही दिन\n',
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
                          text: 'रु. १३/- को टिकट\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                ),
              ),
              headerBorderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
