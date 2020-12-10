import 'package:flutter/material.dart';

import 'package:barcode_scan/barcode_scan.dart';

import 'package:qrreaderapp/src/pages/direcciones_page.dart';
import 'package:qrreaderapp/src/pages/mapas_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: _scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  _scanQR() asyng  {

    //https://fernando-herrera.com
   // geo:40.73255860802501,-73.89333143671877

    String futureString = '';
   
   
   
   
   // try {
     // futureString = await BarcodeScanner.scan();
  //  } catch (e) {
   //   futureString = e.tosString();
   // }
//print('future String: $futureString');

//if(futureString != null );

//print('ya hay informacion');
  //}



  }


  Widget _callPage(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }

  Widget _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        currentIndex = index;
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.map),
            // ignore: deprecated_member_use
            title: Text('Mapas')),
        BottomNavigationBarItem(
            icon: Icon(Icons.brightness_5),
            // ignore: deprecated_member_use
            title: Text('Direcciones')),
      ],
    );
  }
}
