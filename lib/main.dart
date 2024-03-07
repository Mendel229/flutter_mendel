import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Person person = new Person(size: 180);
  print(person.name);
}

class Person {
  String? name;
  int? age;
  String? sex;
  int? size;

  Person({this.name, this.age, this.sex, this.size});
}
Person P1=new Person(name:"Jonathan",age:20,sex:"Masculin",size:182);
Person P2=new Person(name:"Sephora",age:19,sex:"Féminin",size:152);
Person P3=new Person(name:"Louange",age:21,sex:"Féminin",size:177);
Person P4=new Person(name:"Avoce",age:19,sex:"Masculin",size:144);
Person P5=new Person(name:"Péniel",age:20,sex:"Masculin",size:168);
Person P6=new Person(name:"Ayra Star",age:21,sex:"Féminin",size:180);
Person P7=new Person(name:"Mr Monney",age:27,sex:"Masculin",size:189);
Person P8=new Person(name:"Damso Jr",age:19,sex:"Masculin",size:188);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var names=[P1,P2,P3,P4,P5,P6,P7,P8];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Chat"),
          backgroundColor: Colors.grey[800],
        ),
        body:  ListView(
            children: [
            ...names.map((e)=>
                  ListTile(
                  leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Ffr.vecteezy.com%2Fart-vectoriel%2F26619142-defaut-avatar-profil-icone-vecteur-de-social-medias-utilisateur-photo-image&psig=AOvVaw056Nq16lXlEWd1W9GX8fEB&ust=1709904864302000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPCqjfC34oQDFQAAAAAdAAAAABAD"),
                ),
                title: Text(e.name.toString()),
                subtitle: Text("Age: "+e.age.toString()+"ans  Sexe: "+e.sex.toString()+" Taille: "+e.age.toString()),)
              ).toList()
            ]

        ),
        bottomNavigationBar:  NavigationBar(
          selectedIndex: 0,

          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),NavigationDestination(
              icon: Icon(Icons.schedule),
              label: 'Recent',
            ),NavigationDestination(
              icon: Icon(Icons.groups),
              label: 'Groups',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.person_add),
          onPressed: () {  },),
      ),
    );
  }
}