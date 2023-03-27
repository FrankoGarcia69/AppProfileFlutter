import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text(
        'Alina Jokes',
        style: TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
        ),
      elevation: 0,
      toolbarHeight: 80,
      leading: IconButton(
       
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.black, 
      onPressed: () {
        Navigator.of(context).pushNamed('/login');  
      },
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(Icons.edit_outlined),
          color: Colors.black,
          onPressed: () {
            
          },
        ),
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(width: MediaQuery.of(context).size.width - 20,
            height: 120.0,
            margin: EdgeInsets.only(top:10.0),
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 150, 228, 153).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Color.fromARGB(255, 150, 228, 153),
                    backgroundImage: AssetImage('images/ring.png'),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.yellow,
                    backgroundImage: AssetImage('images/mess.png'),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5.0, 
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(2.0),
                  child: const CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 239, 83, 80).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Color.fromARGB(255, 239, 83, 80),
                    backgroundImage: AssetImage('images/star.png'),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 107, 172, 224).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Color.fromARGB(255, 107, 172, 224),
                    backgroundImage: AssetImage('images/share.png',),
                  ),
                ),
              ],
            ),
          ),
          Container( 
            color: Colors.white,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0),
            height: 50.0,
            width: MediaQuery.of(context).size.width-14,
            child: Text('Profile Info',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 28.0
            ),),
          ),
          Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( 
                width: MediaQuery.of(context).size.width -14,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text('Date of Birth',style: TextStyle(fontSize: 15.0,color: Colors.grey.shade700,),),
                        SizedBox(height: 8,),
                        Text('15 Feb 1996',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
                      ],
                    ),
                    FloatingActionButton.small(
                      backgroundColor: Colors.grey.shade700,
                      onPressed: (){},
                      child: const Icon(Icons.edit,color: Colors.white),
                    ),
                  ],
                )),
            ),
          ),
          Container( 
            color: Colors.white,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0),
            height: 50.0,
            width: MediaQuery.of(context).size.width -14,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Contact Info',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28.0
                ),),
                const Text('+ Add',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 23.0
                ),),
              ],
            ),
          ),
          Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( 
                width: MediaQuery.of(context).size.width -14,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text('Main Number',style: TextStyle(fontSize: 15.0,color: Colors.grey.shade700,),),
                        SizedBox(height: 8,),
                        Text('+91 95221 81654',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
                      ],
                    ),
                    Row(
                      children: [
                        FloatingActionButton.small(
                          backgroundColor: Colors.grey.shade700,
                          onPressed: (){},
                          child: const Icon(Icons.edit_off,color: Colors.white),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.grey.shade700,
                          onPressed: (){},
                          child: const Icon(Icons.delete,color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            ),
          ),
          Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( 
                width: MediaQuery.of(context).size.width -14,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text('Primary Number',style: TextStyle(fontSize: 15.0,color: Colors.grey.shade700,),),
                        SizedBox(height: 8,),
                        Text('+91 95221 81654',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
                      ],
                    ),
                    Row(
                      children: [
                        FloatingActionButton.small(
                          backgroundColor: Colors.grey.shade700,
                          onPressed: (){},
                          child: const Icon(Icons.edit_off,color: Colors.white),
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.grey.shade700,
                          onPressed: (){},
                          child: const Icon(Icons.delete,color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            ),
          ),
          Container( 
            color: Colors.white,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0),
            height: 50.0,
            width: MediaQuery.of(context).size.width -14,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Email Info',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28.0
                ),),
                const Text('+ Add',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 23.0
                ),),
              ],
            ),
          ),
          Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( 
                width: MediaQuery.of(context).size.width -14,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text('Main Email',style: TextStyle(fontSize: 15.0,color: Colors.grey.shade700,),),
                        SizedBox(height: 8,),
                        Text('test@gmail.com',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
                      ],
                    ),
                    FloatingActionButton.small(
                      backgroundColor: Colors.grey.shade700,
                      onPressed: (){},
                      child: const Icon(Icons.delete,color: Colors.white),
                    ),
                  ],
                )),
            ),
          ),
          Container( 
            color: Colors.white,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0),
            height: 50.0,
            width: MediaQuery.of(context).size.width -14,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Adress Info',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28.0
                ),),
                const Text('+ Add',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 23.0
                ),),
              ],
            ),
          ),
          Card(
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox( 
                width: MediaQuery.of(context).size.width-14,
                height: 100.0,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [ 
                        Text('Home Town Adress',style: TextStyle(fontSize: 15.0,color: Colors.grey.shade700,),),
                        SizedBox(height: 8,),
                        Text('56, Vivek Chowk, Ghatalodiya,',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
                        Text('220523, Ahmedabad',style: TextStyle(fontSize: 22.0, color: Colors.grey.shade700,),),
    
                      ],
                    ),
                    FloatingActionButton.small(
                      backgroundColor: Colors.grey.shade700,
                      onPressed: (){},
                      child: const Icon(Icons.delete,color: Colors.white),
                    ),
                  ],
                )),
            ),
          ),
          Container(width: MediaQuery.of(context).size.width -14,
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
            ), 
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('images/face.png'),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 123, 179, 224).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Color.fromARGB(255, 123, 179, 224),
                    backgroundImage: AssetImage('images/tw.png'),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 224, 159, 219).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Color.fromARGB(160, 255, 255, 255),
                    backgroundImage: AssetImage('images/ins.png'),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 94, 185, 76).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/go.png'),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 90, 97, 102).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/plus.png'),
                  ),
                ),
            ],
            ),
          ),
          
        ],
      ),
    ),  
    );
  }
}