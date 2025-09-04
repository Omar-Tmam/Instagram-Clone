import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:instagram_clone/Core/utils/app_router.dart';
import 'package:media_kit/media_kit.dart';

Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized(); // أضف هذا السطر
  await dotenv.load(fileName: ".env");
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark(),
    );
  }
}
