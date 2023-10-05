<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
A package to add google pay and apple pay to your Flutter application.
It is the payment package for the stage 5 task of HNGx internship.

## Platform Support
| Android  | Google Pay |
|:---------:|:----------:|
|   iOS:    | Apple Pay  |

## Features

This package helps to integrate Google pay and Apple pay into your app.

## Getting started


## Usage

1. Import the package into your project.
   To start using this plugin, add `in_app_payment` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/):
   ```yaml
   dependencies:
   in_app_payment: ^0.0.2
   ```

2. Initialize HNGPay:
   ```dart
      final pay = HNGPay();
   ```

3. For Android, invoke the googlePay function in place of your 'pay' button in your app and pass the amount to be paid as argument.
   ```dart
   pay.googlePay(context, amountToPay: "24", userID: '23')
   ```
4. For IOS, invoke the applePay function in place of your 'pay' button in your app and pass the amount to be paid as argument.
    ```dart
    pay.applePay(context, amountToPay: "24", userID: '23'),
    ```

### Example
This snippet assumes the existence a payment configuration
   ```dart
   import 'package:flutter/material.dart';
   import 'package:in_app_payment/in_app_payment.dart';
   
   void main() {
     runApp(const MyApp());
   }
   
   class MyApp extends StatelessWidget {
     const MyApp({super.key});
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
           useMaterial3: true,
         ),
         home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
       
       final pay = HNGPay();
   
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text("Payment test"),
         ),
         body: Center(
           child: Container(
             child: pay.googlePay(context, amountToPay: "24", userID: '23'), //for android implementaion
           ),
         ),
       );
     }
   }
   
   ```

## Authors
- [Rayhan Awojobi](https://github.com/dexterousnorthpaw)
- [Ridwan Lawal](https://github.com/Reazy-ai)
- [Zaccheus Oluwole](https://github.com/Zacchaeus-Oluwole)
