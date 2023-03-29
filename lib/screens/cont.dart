import 'package:flutter/material.dart';

class cont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          margin: const EdgeInsets.only(
              top: 120.0, bottom: 120.0, left: 80.0, right: 80.0),
          padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
          alignment: Alignment.center,
          color: Colors.brown,
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      "User Id",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 40.0,
                        fontFamily: 'Mansalva',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Text("Passward",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40.0,
                            fontFamily: 'Mansalva',
                            color: Colors.white)),
                  ),
                ],
              ),
              Login()
            ],
          )),
    );
  }
}

// class Images extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//   AssetImage assetImage = const AssetImage('images/img_1.png');
//     Image image = Image(image: assetImage,width: 200.0,height: 200.0,);
//     return Container(child: image,);
//   }
//
// }

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 20.0),
      width: 200.0,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          elevation: 9.0,
        ),
        onPressed: (){
          Login_page(context);
        },
      child: const Text("Login",style: TextStyle(color: Colors.white),

      ),


      ),
    );
  }
}

void Login_page (BuildContext context)
{
  var popup = const AlertDialog(
    title: Text('Login Successfully'),
    content: Text('Enjoy our app'),
  );

  showDialog(context: context, builder: (BuilderContext)=>popup);
}
