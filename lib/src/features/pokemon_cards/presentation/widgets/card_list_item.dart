import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import '/di.dart';
import '/src/core/core_domain/repositories/favorites_repository.dart';
import '../screens/card_details_screen.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';
import 'skeleton_card.dart';

class CardListItem extends StatefulWidget {
  const CardListItem({required this.card, super.key});

  final PokemonCard card;

  @override
  State<CardListItem> createState() => _CardListItemState();
}

class _CardListItemState extends State<CardListItem> {
  late final FavoritesRepository _favoritesRepo;
  bool _isFavorite = false;
  bool _loadingFavorite = true;

  @override
  void initState() {
    super.initState();
    _favoritesRepo = sl<FavoritesRepository>();
    _loadFavorite();
  }

  Future<void> _loadFavorite() async {
    final fav = await _favoritesRepo.isFavorite(widget.card.id);
    if (mounted) {
      setState(() {
        _isFavorite = fav;
        _loadingFavorite = false;
      });
    }
  }

  Future<void> _toggleFavorite() async {
    setState(() => _loadingFavorite = true);
    if (_isFavorite) {
      await _favoritesRepo.removeFavorite(widget.card.id);
    } else {
      await _favoritesRepo.addFavorite(widget.card.id);
    }
    final fav = await _favoritesRepo.isFavorite(widget.card.id);
    if (mounted) {
      setState(() {
        _isFavorite = fav;
        _loadingFavorite = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final card = widget.card;
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () async {
          // tactile feedback
          HapticFeedback.lightImpact();
          // navigate to details with Hero animation
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => CardDetailsScreen(card: card),
          ));
          // reload favorite in case it changed on details
          _loadFavorite();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: card.id,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CachedNetworkImage(
                      imageUrl: card.imageUrl,
                      fit: BoxFit.contain, // Changed from cover to contain to prevent image cropping
                      width: double.infinity,
                      placeholder: (context, url) => const SkeletonCard(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                    // subtle gradient to improve text contrast
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black26],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      card.name,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: _loadingFavorite ? null : _toggleFavorite,
                    icon: _loadingFavorite
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Icon(
                            _isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: _isFavorite ? Colors.redAccent : null,
                          ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text('HP: ${card.hp ?? 'N/A'} - ${card.supertype ?? ''}'),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
