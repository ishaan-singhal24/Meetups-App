import 'package:flutter/material.dart';
import 'package:meetups_app/basic_info_page.dart';
import 'package:meetups_app/meet_details.dart';
import 'package:meetups_app/meets_overview_screen.dart';
import 'package:meetups_app/meetup_details.dart';
import 'package:meetups_app/qr_code_scanner.dart';
import 'package:meetups_app/app_drawer.dart';
import 'package:provider/provider.dart';
import 'meetup_list.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MeetUps(),
      child: MaterialApp(
        title: "Meetups",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        home: HomeScreen(),
        routes: {
          '/qr-code': (context) => QrCode(),
          '/basic-info': (context) => MyCustomForm(),
          '/meetup-list': (context) => MeetupList(),
          '/meet-detail': (context) => MeetDetails(),
          '/meets-overview': (context) => MeetsOverviewScreen(),
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  late String _username, _pass;

  _showSnackbar() {
    var snackBar = new SnackBar(content: Text("Login Successful"));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Demo Login Page"),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (val) =>
                  val != "fake-user" ? "Username is not Valid" : null,
              onSaved: (val) => _username = val!,
              decoration: InputDecoration(
                  labelText: "Username", hintText: "Enter Username"),
            ),
            TextFormField(
              onSaved: (val) => _pass = val!,
              validator: (val) =>
                  val != "fake-pass" ? "Password invalid" : null,
              decoration: InputDecoration(
                  labelText: "Password", hintText: "Enter Password"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    _showSnackbar();

                    Navigator.of(context).pushNamed(QrCode.routeName);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
