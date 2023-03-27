import 'package:flutter/material.dart';

class MyAppLogin extends StatefulWidget {
  const MyAppLogin({super.key});

  @override
  State<MyAppLogin> createState() => _MyAppLoginState();
}

class _MyAppLoginState extends State<MyAppLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 75.0,
        ),
        children: [ 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/Logo.png'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                width: 280.0,
                height: 5.0,
                child: Divider(
                  color: Colors.redAccent
                  ),
              ),
              const Text(
                'Inicia Sesion',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 35.0,
                  color: Colors.black
                  ),
                
                ),
              const SizedBox(
                width: 180.0,
                height: 20.0,
                child: Divider(
                  color: Colors.redAccent
                  ),
              ),
              const SizedBox(
                width: 180.0,
                height: 50.0,
              ),
              //User Name
              const TextField(
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
                ),
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  hintText: 'User-Name',
                  hintStyle: TextStyle(
                    color: Colors.black, 
                  ),
                  labelText: 'Usuario',
                  labelStyle: TextStyle(
                    color: Colors.red, fontSize: 22.0, 
                    fontFamily: 'RobotoMono',
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  ),
                  ),
              const SizedBox(
                width: 180.0,
                height: 50.0,
              ),
              //Password
              const TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                enableInteractiveSelection: false,
                obscureText: true,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black, 
                  ),
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                    color: Colors.red, fontSize: 22.0, 
                    fontFamily: 'RobotoMono',
                  ),
                  suffixIcon: Icon(
                    Icons.password,
                    color: Colors.red,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                  ),
                  ),
              const SizedBox(
                width: 180.0,
                height: 50.0,
              ),
              //Boton
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  side: BorderSide(width: 3.0,color: Colors.red),
                  shadowColor: Colors.red,
                  elevation: 10,
                ),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'RobotoMono',
                    fontSize: 28.0,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/profile');
                },
              ),     
            ],
          )
        ],
      ),
    );
  }
}