import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/config/routes/route_generator.dart';
import 'package:ixl/features/presentation/pages/subjects/components/lesson_provider.dart';
import 'package:provider/provider.dart';


void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => LessonProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: AppRoutes.questions,
      ),
    );
  }
}

