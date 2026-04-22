import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../screens/chat_screen.dart';
import 'glass_card.dart';

class InputBar extends StatelessWidget {
  final bool isFromGuide;
  const InputBar({this.isFromGuide = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GlassCard(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hint: Text(
                  "Ask Noorva Anything",
                  style: TextStyle(color: AppColors.textSecondary),
                ),
              ),
            ),
            Row(
              children: [
                _icon(Icons.attach_file),
                if (isFromGuide) ...[
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 400),
                          pageBuilder: (_, __, ___) => const ChatScreen(),
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.lightbulb_outline, size: 18),
                            Text(
                              'Guide',
                              style: TextStyle(color: AppColors.textPrimary),
                            ),
                            Icon(Icons.keyboard_arrow_down, size: 18),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                Spacer(),
                _icon(Icons.mic),
                const SizedBox(width: 8),
                _icon(Icons.graphic_eq),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _icon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white10),
      child: Icon(icon, size: 18),
    );
  }
}
