import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/signin/components/background.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _validate = false;
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        errorText: _validate ? "Login Can't Be Empty" : null,
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: 'E-Mail',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextFormField(
                      obscureText: _hidePass,
                      maxLength: 8,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        errorText: _validate ? "Құпия сөзді жазыңыз" : null,
                        suffixIcon: IconButton(
                            icon: Icon(_hidePass
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _hidePass = !_hidePass;
                              });
                            }),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: 'Құпия сөз',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       backgroundColor: Color.fromRGBO(9, 52, 86, 1),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                       ),
                    ),
                    onPressed: () {},
                    
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          backgroundColor: Color.fromRGBO(9, 52, 86, 1),
                        ),
                      ),
                    ),
                  ),
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    endIndent: 10,
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    indent: 10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(color: Colors.grey, width: 1), // <-- Radius
    ),),
                icon: Image.asset("assets/icons/google.png", width: 30, height: 30,),
                label: Text('Continue with Google', style: TextStyle(color: Colors.black, fontSize: 17),),
                onPressed: () {},
          ),
            ),
            SizedBox(height: 20),
            SizedBox(
  width: double.infinity,
  height: 50,
  child: ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide.none, // Remove border
      ),
    ),
    icon: Image.asset("assets/icons/apple_logo_white.svg.png", width: 30, height: 30,),
    label: Text('Continue with Apple', style: TextStyle(color: Colors.white, fontSize: 17),),
    onPressed: () {},
  ),
),
          ],
            ),
      ),);
  }
}
