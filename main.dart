import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JajanYuk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JajanYuk'),
        // endDrawer: Drawer(
        //   child: ListView(
        //     padding: const EdgeInsets.all(0),
        //     children: [
        //       Container(
        //         color: Colors.blue[100],
        //         child: UserAccountsDrawerHeader(
        //           currentAccountPicture: const CircleAvatar(
        //             child: FlutterLogo(size: 50,),
        //           ),
        //           decoration: BoxDecoration(color: Colors.grey[200]),
        //           accountName: const Text(
        //             'Reggie',
        //             style: TextStyle(
        //               color: Colors.black,
        //             ),
        //           ),
        //           accountEmail: const Text(
        //             'Reggie@gmail.com',
        //             style: TextStyle(
        //               color: Colors.black,
        //             ),
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         title: const Text('Menu 1'),
        //         onTap: () {
        //           Navigator.of(context).pop();
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Menu 2'),
        //         onTap: () {},
        //       ),
        //     ],
        //   ),
        // ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_shopping_cart_outlined),
            tooltip: 'Lihat keranjang',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a cart')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Lihat keranjang',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a cart')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Pergi ke halaman selanjutnya',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Detail'),
                    ),
                    body: Column(
                      children: [
                        Container(
                          height: 300,
                          width: double.infinity,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Center(
                            child: Text(
                              'Tidak ada fotonya',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                                },
                                icon: const Icon(Icons.arrow_back_ios),
                              ),
                            ),
                            const Text(
                              "Detail",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Tambahkan aksi untuk berbagi di sini
                              },
                              icon: const Icon(
                                Icons.share,
                                size: 32.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 185 / 243,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            children: List.generate(
                              8,
                              (index) => Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset.zero,
                                      blurRadius: 15.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Temukan berbagai pilihan untuk semua selera.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 185 / 243,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset.zero,
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 185 / 243,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: List.generate(26, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset.zero,
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}