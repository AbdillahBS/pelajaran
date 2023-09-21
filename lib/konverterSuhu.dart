import 'package:flutter/material.dart';

void main() {
  runApp(suhuApp());
}

class suhuApp extends StatefulWidget {
  const suhuApp({Key? key}) : super(key: key);

  @override
  State<suhuApp> createState() => _suhuAppState();
}

//inisialisasi
TextEditingController txtinput = new TextEditingController();
double _input = 0;
double _kelvin = 0;
double _fahrenheit = 0;
double _reamur = 0;

class _suhuAppState extends State<suhuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    child: Icon(Icons.ac_unit),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Text(
                  "Konverter Suhu By : Abdillah",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  style: TextStyle(
                      color: const Color.fromARGB(255, 254, 251, 251)), // Warna teks hitam pada tema gelap
                  decoration: InputDecoration(
                    labelText: 'Masukkan Suhu',
                  ),
                  controller: txtinput,
                  keyboardType: TextInputType.number,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Suhu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: Icon(Icons.ac_unit),
                                        backgroundColor: Colors.amber.shade700,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Farenheit",
                                        style: TextStyle(
                                          fontFamily: 'Junge',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "Nilai",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "$_fahrenheit",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_upward_outlined,
                            size: 30,
                          ),
                          Icon(
                            Icons.arrow_downward_outlined,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Suhu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: Icon(Icons.ac_unit),
                                        backgroundColor: Colors.amber.shade700,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Kelvin",
                                        style: TextStyle(
                                          fontFamily: 'Junge',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "Nilai",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "$_kelvin",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Memberikan bentuk bulat pada tombol
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 41, 148, 46),
                          offset: Offset(0, 1), // Atur bayangan pada sumbu Y
                          blurRadius: 0, // Atur tingkat kabur
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Warna teks putih
                        ),
                      ),
                      onPressed:konveri,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void konveri() {
    setState(() {
      _input = double.parse(txtinput.text);
      _reamur = 4 / 5 * _input;
      _fahrenheit = 9 / 5 * _input;
      _kelvin = _input + 273;
    });
  }
}
