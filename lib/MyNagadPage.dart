import 'package:abcd/MyTabBarScreen.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'MyTabBarScreen.dart';
import 'Transactions.dart';

class MyNagadPage extends StatefulWidget {
  @override
  _MyNagadPageState createState() => _MyNagadPageState();
}

class _MyNagadPageState extends State<MyNagadPage> {
  String? selectedLanguage = 'English';
  String? selectedLanguage2 = 'Personal';
  String? selectedLanguage3 = 'Yes';
  String? selectedLanguage4 = ' ';

  void changeLanguage(String? language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  void changeLanguage2(String? language2) {
    setState(() {
      selectedLanguage2 = language2;
    });
  }

  void changeLanguage3(String? language3) {
    setState(() {
      selectedLanguage3 = language3;
    });
  }
  void changeLanguage4(String? language4) {
    setState(() {
      selectedLanguage4 = language4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom:20.0,right:140.0),
              child: Text('My Nagad',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Container(
                margin: EdgeInsets.only(bottom:4.0,left:13.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/Alfaz.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width:25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alfaz",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "01710303309",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
        backgroundColor: Colors.red,
        toolbarHeight: 150,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 30.0, top: 50.0),
            width: 20,
            height: 20,
            child: Image.asset('images/rename.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genarel',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('images/language.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Language',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 151),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage,
                            onChanged: changeLanguage,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            items: ['English', 'Bangla', 'Spanish']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('images/setting.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Account Type',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 119),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage2,
                            onChanged: changeLanguage2,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            items: ['Personal', 'Regular', 'Islamic']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('images/pro.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'I Want Profile',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 158),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage3,
                            onChanged: changeLanguage3,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                            items: ['Yes','No']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),



                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset('images/lock.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Change PIN',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:170),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E, // Unicode value of the greater than icon
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          color: Colors.white,
                          child: Image.asset('images/o.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Change Mobile Operator',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:82),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E, // Unicode value of the greater than icon
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.description,
                          size: 22,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Re-submit KYC',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:150),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E, // Unicode value of the greater than icon
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_balance,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Trusted Merchants',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:124),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    '\nMore Information',
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          color: Colors.white,
                          child: Image.asset( 'images/privacy.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:155),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset( 'images/prob.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'FAQ',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:227),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          child: Image.asset( 'images/loca.jpg'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Store Location',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:151),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset( 'images/about.jpg'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'About',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:214),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          child: Image.asset( 'images/facebook2.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Nagad Page',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:172),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image.asset( 'images/website.png'),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Website',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:198),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 21,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign out',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width:195),
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLanguage4,
                            onChanged: changeLanguage4,
                            icon: Icon(
                              IconData(
                                0x3E,
                                fontFamily: 'MaterialIcons',
                              ),
                              color: Colors.black,
                            ),
                            items: [' ']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'My Nagad',
          ),
        ],
        onTap: (index) {

          switch (index) {
            case 0: // Transactions
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
              break;
            case 1: // People
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Transactions()),
              );
              break;
            case 2: // My Nagad
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyTabBarScreen()),
              );
              break;
          }
        },
      ),
    );
  }
}
