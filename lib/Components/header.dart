import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine container width
        double containerWidth =
            constraints.maxWidth > 700
                ? constraints.maxWidth / 1.7
                : constraints.maxWidth;
        return Center(
          child: Container(
            width: containerWidth,
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Color.fromARGB(255, 98, 156, 255),
                  Colors.lightBlueAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.lightBlueAccent,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.lightBlueAccent,
                            Color.fromARGB(255, 98, 156, 255),
                            Colors.lightBlueAccent,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 12,
                            offset: const Offset(2, 6),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/my-image.jpeg'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const AutoSizeText(
                      'FURQAN SHAH',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const AutoSizeText(
                      'Flutter Developer',
                      maxLines: 1,
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                // Intro Text Section
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromARGB(255, 197, 218, 255),
                      ),
                    ),
                    child: AutoSizeText.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        children: [
                          const TextSpan(text: "Hey there! I'm a\n"),
                          const TextSpan(
                            text: 'Flutter developer\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const TextSpan(text: 'turning ideas into '),
                          const TextSpan(
                            text: 'sleek, cross-platform apps.\n',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const TextSpan(
                            text: 'Fast, functional, and pixel-perfect —\n',
                          ),
                          const TextSpan(
                            text: "let's build something amazing together.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      minFontSize: 12,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
