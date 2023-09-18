import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final namaController = TextEditingController();
  final nimController = TextEditingController();
  final tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              _textboxNamaMahasiswa(),
              _textboxNIM(),
              _textboxTahunLahir(),
              _tombolSimpan()
            ],
          )
      ),
    );
  }
  _textboxNamaMahasiswa(){
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: namaController,
    );
  }
  _textboxNIM(){
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: nimController,
    );
  }
  _textboxTahunLahir(){
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: tahunLahirController,
    );
  }
  _tombolSimpan(){
    return ElevatedButton(
        onPressed: (){
          String nama = namaController.text;
          String nim = nimController.text;
          int tahunLahir = int.parse(tahunLahirController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TampilData(
                nama: nama,
                nim: nim,
                tahunLahir : tahunLahir,
              )));
        },
        child: const Text('Simpan'));
  }
}