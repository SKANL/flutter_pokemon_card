import 'package:flutter/material.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
import '../widgets/flip_card_3d.dart';
import '../widgets/card_back_info.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({required this.card, super.key});

  final PokemonCard card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(card.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate card dimensions maintaining aspect ratio
              final maxHeight = constraints.maxHeight * 0.85;
              final maxWidth = constraints.maxWidth * 0.95;
              final cardHeight = maxHeight;
              final cardWidth = cardHeight * 0.72; // Pokemon card aspect ratio

              return Center(
                child: SizedBox(
                  height: cardHeight,
                  width: cardWidth < maxWidth ? cardWidth : maxWidth,
                  child: FlipCard3D(
                    autoFlipDuration: const Duration(seconds: 1),
                    front: _buildCardFront(context),
                    back: CardBackInfo(card: card),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Toca la carta para voltearla 🎴'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        icon: const Icon(Icons.touch_app),
        label: const Text('Ayuda'),
        backgroundColor: Colors.blue.shade700,
      ),
    );
  }

  Widget _buildCardFront(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Hero(
        tag: card.id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                card.imageUrl,
                fit: BoxFit.contain, // Changed from cover to contain to prevent image cropping
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Colors.grey.shade800,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey.shade800,
                  child: const Center(
                    child: Icon(Icons.error, size: 80, color: Colors.red),
                  ),
                ),
              ),
              // Subtle gradient overlay for hint text
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: const Text(
                    'Toca para ver detalles ✨',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}