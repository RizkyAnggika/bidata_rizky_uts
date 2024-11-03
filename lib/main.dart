import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIODATA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'BIODATA'),
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
  Widget _dataAbout ({
    required IconData icon,
    required String text,
    required String text1,
  }) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: const Color.fromARGB(255, 134, 134, 134),
          ),
          const SizedBox(width: 15),

          Expanded(
            flex: 2,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 100,
                    child: Text(
                      text,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ),
                
                Expanded(
                  child: Text(
                    text1,
                    style: const TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
                  )
                )
              ],
            )
          ),
        ],
      ),
    );
  }

  Widget _skillEndPendidikan ({
    required IconData icon,
    required String text,
  }){
    return Row(
      children: [
        Icon( icon, size: 7),

        const SizedBox(width: 15),

        Expanded(child: Text(text))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Header
      appBar: AppBar(
        toolbarHeight: 45,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 59, 84, 96),
        title: Text(
          widget.title, 
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //Header End

      body: Row(
        children: [

          //Sidebar
          Container(
            color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width * 0.20,
            constraints: const BoxConstraints(
              minWidth: 175,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Image.asset(
                    'images/Rizky.jpg',
                    width: 225,
                  ),

                  const SizedBox(height: 50),

                  const Text(
                    'I Nyoman Rizky Anggika',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Divider(),

                  const SizedBox(height: 15),
                  const Text(
                    '42230035  |  Teknologi Informasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 225, 224, 224),
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    'Fakultas Teknik dan Informatika',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 225, 224, 224),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ),
          //Sidebar End

          //Content Area
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Container(   
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),

                  //About
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),

                        const SizedBox(height: 30),
                        LayoutBuilder(
                          builder: (context, constraint){
                            if (constraint.maxWidth < 600) {
                              return Column(
                                children: [
                                  const Text(
                                    '       Saya seorang Mahasiswa Jurusan Teknologi Informasi, yang memiliki'
                                    ' minat dan keterampilan dalam mengolah data informasi secara digital,'
                                    ' pengeloahan sistem algoritma data serta kemampuan komunikasi yang baik,'
                                    ' memiliki minat dalam bidang editing Foto dan Vidio. Saya memiliki'
                                    ' kemampuan kepemimpinan yang terbukti dalam keberhasilan mengelola'
                                    ' beberapa program kerja dan acara di UKM Public Speaking UNDIKNAS, saya'
                                    ' senang mencoba dan belajar hal baru. Hobi saya adalah berolahraga terutama gym'
                                  ),

                                  const SizedBox(height: 30),

                                  _dataAbout(icon: Icons.calendar_month, text: 'Age', text1: '20'),
                                  _dataAbout(icon: Icons.email, text: 'Email', text1: 'Marianafuah@gmail.com'),
                                  _dataAbout(icon: Icons.phone, text: 'Phone', text1: '+6281934992673'),
                                  _dataAbout(icon: Icons.location_on, text: 'Alamat', text1: 'Jl. Pantai Sindu no.9 Sanur')

                                ]
                              );
                            } else {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Text(
                                      '       Saya seorang Mahasiswa Jurusan Teknologi Informasi, yang memiliki'
                                      ' minat dan keterampilan dalam mengolah data informasi secara digital,'
                                      ' pengeloahan sistem algoritma data serta kemampuan komunikasi yang baik,'
                                      ' memiliki minat dalam bidang editing Foto dan Vidio. Saya memiliki'
                                      ' kemampuan kepemimpinan yang terbukti dalam keberhasilan mengelola'
                                      ' beberapa program kerja dan acara di UKM Public Speaking UNDIKNAS, saya'
                                      ' senang mencoba dan belajar hal baru. Hobi saya adalah berolahraga terutama gym'
                                    )     
                                  ),

                                  const SizedBox(width: 100),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        _dataAbout(icon: Icons.calendar_month, text: 'Age', text1: '20'),
                                        _dataAbout(icon: Icons.email, text: 'Email', text1: 'Marianafuah@gmail.com'),
                                        _dataAbout(icon: Icons.phone, text: 'Phone', text1: '+6281934992673'),
                                        _dataAbout(icon: Icons.location_on, text: 'Alamat', text1: 'Jl. Pantai Sindu no.9 Sanur')
                                      ],
                                    )
                                  ), 
                                ],
                              );
                            }
                          } 
                        ),
                        //About End

                        //Kemampuan
                        const SizedBox(height: 50),
                        const Text(
                          'Kemampuan Saya',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),

                        const SizedBox(height: 30),
                        LayoutBuilder(
                          builder: (context, constraint){
                            if (constraint.maxWidth < 600) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Hard Skill',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),

                                  const SizedBox(height: 10),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Kemamampuan Analisis data'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Dasar Machine Learning'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Addministrasi Skill : Microsoft Office (Word , Excel, Power Point) Email, Administration, Google Office Suite'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Editing (fotograpy, Vidiograpy)'),

                                  const SizedBox(height: 40),
                                  const Text(
                                    'Soft Skill',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),

                                  const SizedBox(height: 10),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Komunikasi'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Problem Solving'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Terstuktur'),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Team Work '),
                                  _skillEndPendidikan(icon: Icons.circle, text: 'Manajemen Waktu'),
                                ]
                              );
                            } else {
                              return Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Hard Skill',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),

                                        const SizedBox(height: 10),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Kemamampuan Analisis data'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Dasar Machine Learning'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Addministrasi Skill : Microsoft Office (Word , Excel, Power Point) Email, Administration, Google Office Suite'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Editing (fotograpy, Vidiograpy)'),
                                      ],
                                    )
                                  ),

                                  const SizedBox(width: 50),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Soft Skill',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),

                                        const SizedBox(height: 10),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Komunikasi'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Kemampuan Problem Solving'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Terstuktur'),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Team Work '),
                                        _skillEndPendidikan(icon: Icons.circle, text: 'Manajemen Waktu'),
                                        
                                      ],
                                    )
                                  ),
                                ],
                              );
                            }
                          } 
                        ),
                        //Kemampuan End
                        
                        //Pendidikan
                        const SizedBox(height: 50),
                        const Text(
                          'Pendidikan',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),

                        const SizedBox(height: 30),
                        _skillEndPendidikan(icon: Icons.circle, text: 'Universitas Pendidikan Nasional Denpasar'),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Teknologi Informasi  |  2022 - Sekarang',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 139, 139, 139),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),
                        _skillEndPendidikan(icon: Icons.circle, text: 'SMAN 6 Denpasar'),
                        const Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Jurusan IPA  |  2019 - 2022',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 139, 139, 139),
                            ),
                          ),
                        ),
                        //Pendidikan End

                      ],
                    ),
                  )
                ),
              )
            ),  
          )
          //Content Area End

        ],
      ),
    );
  }
}