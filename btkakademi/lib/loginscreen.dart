import 'package:btkakademi/homepage.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

final TextEditingController adminAd = TextEditingController();
final TextEditingController adminSifre = TextEditingController();

class _loginscreenState extends State<loginscreen> {
  var kullaniciAd = "yusuf";
  var sifre = "yusuf24";
  var deger = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 5),
                          color: Color(0x397383FF),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.question_mark,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(
                  height: context.dynamicWidth(0.7),
                  child: Image.asset("assets/images/btkakademi.jpg")),
              Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                child: TextField(
                  controller: adminAd,
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    hintStyle: TextStyle(
                      color: Colors.black26,
                    ),
                    prefixIcon: Icon(
                      Icons.account_circle_rounded,
                      color: Color(0x397383FF),
                      size: 30,
                    ),
                  ),
                ),
              ),



              SizedBox(
                height: context.dynamicHeight(0.01),
              ),



              Padding(
                  padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                  child: TextField(
                    controller: adminSifre,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Sifre",
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0x397383FF),
                        size: 30,
                      ),
                    ),
                  ),
                ),

              Opacity( opacity: deger,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 0.0),
                  child: Text("Yanlış girdiniz! Tekrar Deneyiniz!!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red,),),
                ),
              ),


              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              SizedBox(
                width: context.dynamicWidth(0.7),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color(0x397383FF),

                  ),
                  onPressed: () {
                    if (kullaniciAd == adminAd.text && sifre == adminSifre.text) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    }

                    else{
                      deger= 1.0;

                    }

                  },
                  child: Text("GİRİŞ"),
                ),


              ),

              SizedBox(
                height: context.dynamicHeight(0.15),
              ),
              SizedBox(
                  width: context.dynamicWidth(0.4),
                  child: Image.asset("assets/images/onetdata.jpg")),

            ],
          ),
        ),
      ),
    );
  }
}
