import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/edit_profile/components/edit_profile_background.dart';

class EditProfileBody extends StatefulWidget {
  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  @override
  Widget build(BuildContext context) {
    return EditProfileBackground(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 55),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {}, // Image tapped
                  child: Image.asset(
                    'assets/icons/back_button.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(),
                const Text("Edit profile", style: TextStyle(color: Colors.white, fontSize: 25),),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 90,
              child: Stack(
                children: [ 
                  Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 75,
                    height: 75,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                              color: Colors.white,
                    ),
                    child: Center(child: Image.asset("assets/images/profile_photo.png"),),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.blue,),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
                ]
              ),
            ),
            SizedBox(height: 10),
            Text("Name Surname", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            Text("account@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal)),
            SizedBox(height: 55),
            ProfileTextField(label: 'Username', initialValue: 'Amirzhan Amirkhan'),
            SizedBox(height: 10),
            ProfileTextField(label: 'Email', initialValue: 'jointoapp@gmail.com'),
            SizedBox(height: 10),
            ProfileDropDown(label: 'Class', values: ['6 class', '7 class', '8 class']),
            SizedBox(height: 10),
            ProfileDropDown(label: 'School', values: ['124 school', '125 school', '126 school']),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // Handle sign out
              },
              child: Text('Sign out', style: TextStyle(color: Colors.white, fontSize: 20),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String label;
  final String initialValue;

  ProfileTextField({required this.label, required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
          ),
          labelText: label,
          suffixIcon: Icon(Icons.edit),
        ),
      ),
    );
  }
}

class ProfileDropDown extends StatelessWidget {
  final String label;
  final List<String> values;

  ProfileDropDown({required this.label, required this.values});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
          ),
          labelText: label,
        ),
        value: values.first,
        onChanged: (String? newValue) {
          // Handle change
        },
        items: values.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}