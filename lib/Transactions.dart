import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'MyTabBarScreen.dart';
import 'MyNagadPage.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  text: 'ALL',
                ),
                Tab(
                  text: 'IN',
                ),
                Tab(
                  text: 'OUT',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Text('No History Available'),
                ),
                Center(
                  child: Text('No History Available'),
                ),
                Center(
                  child: Text('No History Available'),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: 1,
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
          // Handle navigation based on the selected index
          switch (index) {
            case 0: // Transactions
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
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
    );
  }
}