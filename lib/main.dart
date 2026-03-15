import 'package:flutter/material.dart';
import 'package:pizza_delivery/app.dart';
import 'package:user_repository/user_repository.dart';
import 'simple_block_observer.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(); 
  Bloc.observer = SimpleBlockObserver(); 
   runApp(MyApp(FirebaseUserRepo()));
} 