import 'package:api_calling_with_provider/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:api_calling_with_provider/view/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderClass>(create: (_) => ProviderClass()),
      ],
      child: MaterialApp(
        title: 'Provider calling with api',
        home: HomeScreen(),
      ),
    );
  }
}
