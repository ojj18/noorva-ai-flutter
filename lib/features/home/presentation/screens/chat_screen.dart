import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../widgets/glass_card.dart';
import '../widgets/input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(Icons.menu, size: 20),
          ),
        ),
        title: Container(
          width: MediaQuery.sizeOf(context).width * 0.5,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.lightbulb_outline, size: 25),
                const SizedBox(width: 10.0),
                Text(
                  'Noorva Guide',
                  style: TextStyle(color: AppColors.textPrimary, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Center(
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Icon(Icons.edit, size: 20),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bgTop, AppColors.bgBottom],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                right: -10,
                bottom: 120,
                child: Image.asset("assets/character.png", height: 450),
              ),
              Positioned(
                right: 40,
                bottom: 570,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.glass,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 60,
                bottom: 540,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      height: 15,
                      width: 15,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.glass,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),

                  /// Chat Bubble
                  GlassCard(
                    child: const Text(
                      "I see you are ready for guidance. What should we plan first?",
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const Spacer(),

                  const InputBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
