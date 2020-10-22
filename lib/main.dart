import 'package:flutter/material.dart'; //mendeklarasikan atau mengimpor libary yang dibutuhkan
void main() { //fungsi utama dari aplikasi yang akan menjadi entry point
  runApp(MyApp());
}
class MyApp extends StatelessWidget { //widget ini adalah root dari aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //widget diberi nama materialapp
      debugShowCheckedModeBanner: false, //untuk menghilangkan label debug pada pojok kanan aplikasi
      title: 'Kelompok G', //title dari widget
      theme: ThemeData( //tema yang diberikan pada aplikasi
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) { //Metode ini akna dijalankan ketika setState dipanggil
    return Scaffold(
      appBar: AppBar(
        //baris ini digunakan untuk engambil nilai dari objek MyHomePgae yang dibuat oleh metode App.build
        title: Text('NO POVERTY - SDGS 1'), //text untuk mengubah judul pada app bar
      ),
      body: Center( //membuat body menjady center
        child: Column( //membuat isi berupa kolom
          mainAxisAlignment: MainAxisAlignment.center, //membuat text align menjadi center
          children: <Widget>[ //isi dari widget
            Text(
              'Nama Kelompok: ',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30), //ketentuan atau jenis font text
            ),
            Text( '1.Aldi Milansyah Putra (182410102028)', //membuat text
            ),
            Text( '2.Nur Achmad Kurniawan (182410102071)',
            ),
            Text( '3.Dinda Ayu Adiningsih (182410102030)',
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
