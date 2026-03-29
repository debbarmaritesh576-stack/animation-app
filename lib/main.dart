import 'package:flutter/material.dart';  
import 'package:provider/provider.dart';  
  
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(create: (_) => FrameManager()),  
        ChangeNotifierProvider(create: (_) => ToolManager()),  
        ChangeNotifierProvider(create: (_) => ColorManager()),  
      ],  
      child: const AnimationApp(),  
    ),  
  );  
}  
  
class AnimationApp extends StatelessWidget {  
  const AnimationApp({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Animation App',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData.dark().copyWith(  
        scaffoldBackgroundColor: const Color(0xFF1A1A2E),  
        colorScheme: const ColorScheme.dark(  
          primary: Color(0xFF6C63FF),  
          secondary: Color(0xFF03DAC6),  
        ),  
      ),  
      home: const MainScreen(),  
    );  
  }  
}  
  
class MainScreen extends StatelessWidget {  
  const MainScreen({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      backgroundColor: const Color(0xFF1A1A2E),  
      body: Column(  
        children: [  
          Container(  
            height: 56,  
            color: const Color(0xFF16213E),  
            child: Row(  
              children: [  
                const SizedBox(width: 16),  
                const Text(  
                  'Animation App',  
                  style: TextStyle(  
                    color: Colors.white,  
                    fontSize: 18,  
                    fontWeight: FontWeight.bold,  
                  ),  
                ),  
                const Spacer(),  
                IconButton(  
                  icon: const Icon(Icons.play_arrow, color: Colors.green),  
                  onPressed: () {},  
                ),  
                IconButton(  
                  icon: const Icon(Icons.save, color: Colors.white),  
                  onPressed: () {},  
                ),  
              ],  
            ),  
          ),  
          Expanded(  
            child: Container(  
              color: Colors.white,  
              child: const Center(  
                child: Text(  
                  'Drawing Canvas',  
                  style: TextStyle(color: Colors.grey),  
                ),  
              ),  
            ),  
          ),  
          Container(  
            height: 60,  
            color: const Color(0xFF16213E),  
            child: Row(  
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [  
                IconButton(  
                  icon: const Icon(Icons.edit, color: Colors.white),  
                  onPressed: () {},  
                ),  
                IconButton(  
                  icon: const Icon(Icons.auto_fix_high, color: Colors.white),  
                  onPressed: () {},  
                ),  
                IconButton(  
                  icon: const Icon(Icons.layers, color: Colors.white),  
                  onPressed: () {},  
                ),  
                IconButton(  
                  icon: const Icon(Icons.color_lens, color: Colors.white),  
                  onPressed: () {},  
                ),  
                IconButton(  
                  icon: const Icon(Icons.add_box, color: Colors.green),  
                  onPressed: () {},  
                ),  
              ],  
            ),  
          ),  
        ],  
      ),  
    );  
  }  
}  
  
class FrameManager extends ChangeNotifier {}  
class ToolManager extends ChangeNotifier {}  
class ColorManager extends ChangeNotifier {}
