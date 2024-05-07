import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/food.jpg'), fit: BoxFit.fill),
        )),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.transparent,
            Colors.blueGrey.shade900,
          ], stops: const [
            0.3,
            0.7
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                    color: Colors.white, fontSize: (height + width) / 30),
              ),
              const Text(
                'Time to Cook,lets Sign in ',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusColor: Colors.amber,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 3)),
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.orange, width: 3))),
                  cursorColor: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 3)),
                  ),
                  cursorColor: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Forget Password?',
                style: TextStyle(color: Colors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'SIGN IN ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: (height + width) / 50),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Its your first time here?',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
