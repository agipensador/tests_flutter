import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Testes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              //O TESTE LOCALIZA ESTE WIDGET POR CONTA DESTA KEY "email"
              key: const Key('email'),
              controller: emailTextEditingController ,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
