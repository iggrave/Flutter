import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors
          .white, // to give the page a white background so that the image gets mixed with the background
      // child: Center(
      //   // child: Container(
      //   //   child: Text("Login Page", style: TextStyle(
      //   //     fontSize: 20,
      //   //     color: Colors.blue,
      //   //     fontWeight: FontWeight.bold
      //   //   ),),
      //   // ),
      // ),

      child: Column(
        // to align item(widgets) columnwise
        children: [
          Image.asset("assets/images/login_flutter.png",
              fit: BoxFit.cover // to fit the image as a cover
              ),
          SizedBox(
            // we should use sizedbox for padding(or else we can wrap "text" using wrap with padding(control+.))
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            // we should use sizedbox for padding(or else we can wrap "text" using wrap with padding(control+.))
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal:
                    8.0), // We wrapped column with padding by ctrl +. ... to give padding to the text fields
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true, // to hide password visibility
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  // we should use sizedbox for padding(or else we can wrap "text" using wrap with padding(control+.))
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Hi this is my app");
                  }, // Actions performed when the button is pressed
                  child: Text("Login"),
                  style: TextButton
                      .styleFrom(), // Change the color of the text on the button
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
