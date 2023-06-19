import 'package:flutter/material.dart';
import 'dart:math';


class LicenseScreen extends StatelessWidget {
  const LicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color:Colors.blue.shade900),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text('Carnet Digital', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xfff5f6f9),
        elevation: 0,
      ),

      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width * -0.75, -50),
              child: Transform.rotate(
                angle: -pi / 1.0 * -0.15,
                child: Container(
                  width: double.infinity, 
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: const Color(0xffe6eaf0),
                ),
              ),
            ),
      
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width * 0.75, 100),
              child: Transform.rotate(
                angle: -pi / 1.0 * -0.15,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: const Color(0xffe4ac43),
                ),
              ),
            ),
      
            const Information(),
          ],
        ),
      )
   );
  }
}

class Information extends StatelessWidget {
  const Information({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // QR del Carnet
        Container(
          margin: const EdgeInsets.only(top: 40),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/carnet-qr.png', width: 230,),
          ),
        ),

        // Textos (Nombres, apellidos y número de cédula)
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: const PersonalData()
        ),  

        // Textos (Rol y Modalidad)
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const InstitucionalData()
        ),

        SizedBox(
          width: 200,
          child: Text(
            'Sistemas informáticos y Computación',
            style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),

        const Spacer(),

        const ClipOval(
          child: CircleAvatar(
            radius: 65,
            backgroundColor: Color(0xffdfeffd),
            backgroundImage: AssetImage('assets/images/profile-avatar.png'),
          ),
        ),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'UTPL', 
            style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold, fontSize: 25)
          )
        ),
      ],
    );
  }
}

class PersonalData extends StatelessWidget {
  const PersonalData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: Text(
            'JOHN JAIRO VILLAVICENCIO SARANGO',
            style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold, fontSize: 20), 
            textAlign: TextAlign.center,
          )
        ),

        const SizedBox(height: 10,),
        
        Text('C.I.: 1104892', style: TextStyle(color: Colors.blue.shade900, fontSize: 20)),
      ],
    );
  }
}

class InstitucionalData extends StatelessWidget {
  const InstitucionalData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 110,
          child: Text(
            'ANALISTA DE NEGOCIOS', 
            style: TextStyle(color: Colors.blue.shade900, fontSize: 17), 
            textAlign: TextAlign.end,)
          ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          width: 2.5,
          height: 30,
          color: Colors.blue.shade900,
        ),
        SizedBox(
          width: 110,
          child: Text(
            'Abierta y a Distancia', 
            style: TextStyle(color: Colors.blue.shade900, fontSize: 17)
            ),
          ),
      ],
    );
  }
}