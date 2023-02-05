import 'package:flutter/material.dart';

import 'app_drawer.dart';

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  static const routeName = '/basic-info';
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Info Page"),
      ),
      drawer: AppDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home),
                  hintText: 'Enter your address',
                  labelText: 'Address',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your age',
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Birth Date',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your AADHAR/PAN number',
                  labelText: 'AADHAR/PAN number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Area of Interest',
                  labelText: 'Area of Interest',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a Snackbar.
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Data saved successfully.')));
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
