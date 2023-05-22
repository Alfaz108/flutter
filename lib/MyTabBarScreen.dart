import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'MyNagadPage.dart';
import 'Transactions.dart';

class Contact {
  final String name;
  final String imagePath;

  Contact({required this.name, required this.imagePath});
}

class MyTabBarScreen extends StatefulWidget {
  @override
  _MyTabBarScreenState createState() => _MyTabBarScreenState();
}

class _MyTabBarScreenState extends State<MyTabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController _searchController = TextEditingController();

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

  Widget buildContactList(List<Contact> contacts) {
    List<Contact> filteredContacts = contacts
        .where((contact) =>
        contact.name.toLowerCase().contains(_searchController.text.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredContacts.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(filteredContacts[index].imagePath),
              ),
              title: Text(filteredContacts[index].name),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Contact> contacts = [
      Contact(name: 'Alfaz Bin Rumon', imagePath: 'images/rumon.jpg'),
      Contact(name: 'Shakir Ahammed Shuvo', imagePath: 'images/shuvo.jpg'),
      Contact(name: 'Wadud Jahan', imagePath: 'images/wadud.jpg'),
      Contact(name: 'Mehedi Hasan', imagePath: 'images/mehedi.jpg'),
      Contact(name: 'AB Tamim', imagePath: 'images/tamim.jpg'),
      Contact(name: 'Khalid Saifullah', imagePath: 'images/khalid.jpg'),
      Contact(name: 'Fatin Ilham', imagePath: 'images/ilham.jpg'),
      Contact(name: 'Sohanur Rahman', imagePath: 'images/sohan.jpg'),
      Contact(name: 'Tanvir Ahmed Shourov', imagePath: 'images/sourav.jpg'),
      Contact(name: 'Humaid Koreshi', imagePath: 'images/humaid.jpg'),
      Contact(name: 'Humayun Rashid', imagePath: 'images/humyon.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title:Text(
        'People',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.red,
        toolbarHeight: 80,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'CONTACTS'),
            Tab(text: '   SAVED\nUDDOKTA'),
            Tab(text: '   SAVED \nMERCHANT'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Content for Tab 1
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Expanded(
                child: buildContactList(contacts),
              ),
            ],
          ),
          // Content for Tab 2 (Saved Uddokta)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Center(
                child:Text('No Uddokta Available'),
              ),
            ],
          ),
          // Content for Tab 3 (Saved Merchant)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Center(
                child:Text('No Merchant Available'),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: 2,
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
