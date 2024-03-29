import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up'),
      // ),
      body: Center(
        child: Container(
          width: 828.0, // Lebar layar
          height: 1792.0, // Tinggi layar
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start, // Mengatur rata kiri

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 20.0, bottom: 10.0),
                child: Text(
                  'Buat akun baru',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
              ),
              Text(
                'Masukan Data Pribadi',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              Text(
                'Anda Dengan benar',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
                // textAlign: TextAlign.left, // Mengatur rata kiri
              ),
              SizedBox(height: 20.0), // Jarak antara teks dan lingkaran step
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildStepCircle('1'),
                  SizedBox(width: 10.0), // Jarak antara lingkaran
                  _buildStepCircle1('2'),
                  SizedBox(width: 10.0), // Jarak antara lingkaran
                  _buildStepCircle1('3'),
                ],
              ),
              SizedBox(height: 20.0), // Jarak antara lingkaran step dan teks
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Masukkan Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Masukkan kata sandi',
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Masukkan Alamat',
                    labelText: 'Alamat',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 3, 196, 245)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Masukkan No telepon',
                    labelText: 'No telepon',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0), // Jarak antara teks dan tombol konfirmasi
              Container(
                width: 350.0, // Lebar button
                height: 40.0, // Tinggi button
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman sign up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Penyakit()),
                    );
                    // Aksi ketika tombol sign up ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 224, 155,
                        43), // Ubah warna latar belakang menjadi merah
                  ),
                  child: Text('Konfirmasi'),
                ),
              ),
              SizedBox(
                  height:
                      10.0), // Jarak antara tombol konfirmasi dan teks di bawahnya
              Text(
                '*Data pribadi anda dirahasiakan dengan aman',
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Penyakit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up'),
      // ),
      body: Center(
        child: Container(
          width: 828.0, // Lebar layar
          height: 1792.0, // Tinggi layar
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start, // Mengatur rata kiri

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 20.0, bottom: 10.0),
                child: Text(
                  'Buat akun baru',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0), // Jarak antara teks dan lingkaran step
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildStepCircle('1'),
                  SizedBox(width: 10.0), // Jarak antara lingkaran
                  _buildStepCircle('2'),
                  SizedBox(width: 10.0), // Jarak antara lingkaran
                  _buildStepCircle1('3'),
                ],
              ),
              SizedBox(height: 20.0), // Jarak antara lingkaran step dan teks
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Nama Penyakit / Alergi',
                    labelText: 'Nama Penyakit / Alergi',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 350.0, // Lebar TextField
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 77, 142, 151),
                    hintText: 'Nama Penyakit / Alergi',
                    labelText: 'Nama Penyakit / Alergi',
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0), // Jarak antara teks dan tombol konfirmasi
              Container(
                width: 350.0, // Lebar button
                height: 40.0, // Tinggi button
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman sign up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    // Aksi ketika tombol sign up ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 224, 155,
                        43), // Ubah warna latar belakang menjadi merah
                  ),
                  child: Text('Selanjutnya'),
                ),
              ),
              SizedBox(height: 20.0), // Jarak antara teks dan tombol konfirmasi
              Container(
                width: 350.0, // Lebar button
                height: 40.0, // Tinggi button
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman sign up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                    // Aksi ketika tombol sign up ditekan
                  },
                  child: Text('Kembali'),
                ),
              ),
              SizedBox(
                  height:
                      10.0), // Jarak antara tombol konfirmasi dan teks di bawahnya
              Text(
                '*Data pribadi anda dirahasiakan dengan aman',
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildStepCircle(String text) {
  return Container(
    width: 50.0,
    height: 20.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromARGB(255, 6, 224, 213), // Warna lingkaran step
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: const Color.fromARGB(255, 255, 254, 254)),
      ),
    ),
  );
}

Widget _buildStepCircle1(String text) {
  return Container(
    width: 50.0,
    height: 20.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromARGB(255, 0, 150, 180), // Warna lingkaran step
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: const Color.fromARGB(255, 255, 254, 254)),
      ),
    ),
  );
}
