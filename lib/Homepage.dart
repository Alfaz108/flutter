import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'MyNagadPage.dart';
import 'MyTabBarScreen.dart';
import 'Transactions.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String buttonText = 'Tap For Balance';

  void changeButtonText() {
    setState(() {
      buttonText = '70000000.07 Tk.';
    });

    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 5), () {
        setState(() {
          buttonText = 'Tap For Balance';
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bar2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(top: 65.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    changeButtonText();
                  },
                  child: Container(
                    height: 30,
                    width: 150,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'images/nogod.PNG',
                          width: 25,
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          buttonText,
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 150,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0, bottom: 120.0),
              child: IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ),
          ],
        ),



        body:SingleChildScrollView(
          child:Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 290.0, 0.0),
                child: Text(
                  'Services',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(15.0),
                  child:Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset('images/sendmaony.PNG'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child:Text('Send Money\n '),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset('images/sendmaony.PNG'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child:Text('Cash Out\n   '),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset('images/sendmaony.PNG'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child:Text('   Mobile\n Recharge'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset('images/sendmaony.PNG'),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child:Text('Add Money\n   '),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child:Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Transfer\n  Money'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Insurance\n    Policy'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Nagad Mela\n  '),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('   More \n Services  '),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 290.0, 0.0),
                child: Text(
                  'Payment',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child:Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Merchant\n     Pay'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Bil Pay\n '),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('     EMI \n Payment'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Donation\n '),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        Image.asset('images/car2.png'),
                        Image.asset('images/car3.png'),
                        Image.asset('images/car1.png'),
                        Image.asset('images/ca13.png'),
                      ],
                      options: CarouselOptions(
                        height: 100.0,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true,
                        viewportFraction: 1.0,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 303.0, 0.0),
                child: Text(
                  'Others',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child:Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Contact Us\n '),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('    Zakat\n Calculator'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Limits and\n   Charge'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('images/sendmaony.PNG'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child:Text('Surokkha\n '),
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
          currentIndex: 0,
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
              case 1: // Transactions
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transactions()),
                );
                break;
              case 2: // People
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyTabBarScreen()),
                );
                break;
              case 3: // My Nagad
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyNagadPage()),
                );
                break;
            }
          },
        ),
      ),
    );
  }
}
