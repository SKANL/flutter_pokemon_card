import 'package:flutter/material.dart';
import '/src/core/core_domain/entities/pokemon_card.dart';

/// Card back side widget that displays detailed Pokemon card information
/// in a visually organized card-like layout.
class CardBackInfo extends StatelessWidget {
  const CardBackInfo({required this.card, super.key});

  final PokemonCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            _getTypeColor(card.types?.first).withValues(alpha: 0.9),
            _getTypeColor(card.types?.first).withValues(alpha: 0.6),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with name and HP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      card.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (card.hp != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        'HP ${card.hp}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              
              // Types and subtypes
              if (card.types != null || card.subtypes != null)
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    if (card.types != null)
                      ...card.types!.map((type) => _Chip(
                            label: type,
                            color: _getTypeColor(type),
                          )),
                    if (card.subtypes != null)
                      ...card.subtypes!.map((subtype) => _Chip(
                            label: subtype,
                            color: Colors.grey.shade700,
                          )),
                  ],
                ),
              
              const SizedBox(height: 16),
              const Divider(color: Colors.white70, thickness: 2),
              const SizedBox(height: 12),

              // Abilities
              if (card.abilities != null && card.abilities!.isNotEmpty) ...[
                _buildSection(
                  icon: Icons.star,
                  title: 'HABILIDADES',
                  children: card.abilities!
                      .map((ability) => _AbilityCard(ability: ability))
                      .toList(),
                ),
                const SizedBox(height: 12),
              ],

              // Attacks
              if (card.attacks != null && card.attacks!.isNotEmpty) ...[
                _buildSection(
                  icon: Icons.flash_on,
                  title: 'ATAQUES',
                  children: card.attacks!
                      .map((attack) => _AttackCard(attack: attack))
                      .toList(),
                ),
                const SizedBox(height: 12),
              ],

              // Combat stats
              if ((card.weaknesses != null && card.weaknesses!.isNotEmpty) ||
                  (card.resistances != null && card.resistances!.isNotEmpty) ||
                  (card.retreatCost != null && card.retreatCost!.isNotEmpty)) ...[
                _buildSection(
                  icon: Icons.shield,
                  title: 'COMBATE',
                  children: [
                    if (card.weaknesses != null && card.weaknesses!.isNotEmpty)
                      _StatRow(
                        label: 'Debilidad',
                        value: card.weaknesses!
                            .map((w) => '${w.type} ${w.value}')
                            .join(', '),
                        color: Colors.red.shade300,
                      ),
                    if (card.resistances != null && card.resistances!.isNotEmpty)
                      _StatRow(
                        label: 'Resistencia',
                        value: card.resistances!
                            .map((r) => '${r.type} ${r.value}')
                            .join(', '),
                        color: Colors.blue.shade300,
                      ),
                    if (card.retreatCost != null && card.retreatCost!.isNotEmpty)
                      _StatRow(
                        label: 'Retirada',
                        value: '${card.retreatCost!.length}',
                        color: Colors.orange.shade300,
                      ),
                  ],
                ),
                const SizedBox(height: 12),
              ],

              // Card info
              _buildSection(
                icon: Icons.info_outline,
                title: 'INFO',
                children: [
                  if (card.rarity != null)
                    _StatRow(label: 'Rareza', value: card.rarity!),
                  if (card.artist != null)
                    _StatRow(label: 'Artista', value: card.artist!),
                  if (card.set != null)
                    _StatRow(
                      label: 'Set',
                      value: '${card.set!.name} (${card.set!.series})',
                    ),
                  if (card.number != null)
                    _StatRow(label: 'Número', value: card.number!),
                ],
              ),

              // Flavor text
              if (card.flavorText != null && card.flavorText!.isNotEmpty) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    card.flavorText!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],

              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Toca para voltear',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }

  Color _getTypeColor(String? type) {
    if (type == null) return Colors.grey;
    
    final typeColors = {
      'Fire': Colors.orange.shade700,
      'Water': Colors.blue.shade600,
      'Grass': Colors.green.shade600,
      'Lightning': Colors.yellow.shade700,
      'Psychic': Colors.purple.shade600,
      'Fighting': Colors.brown.shade600,
      'Darkness': Colors.grey.shade800,
      'Metal': Colors.blueGrey.shade600,
      'Dragon': Colors.indigo.shade700,
      'Fairy': Colors.pink.shade400,
      'Colorless': Colors.grey.shade500,
    };

    return typeColors[type] ?? Colors.grey.shade600;
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _AbilityCard extends StatelessWidget {
  const _AbilityCard({required this.ability});

  final PokemonAbility ability;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white38),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${ability.name} (${ability.type})',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            ability.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _AttackCard extends StatelessWidget {
  const _AttackCard({required this.attack});

  final PokemonAttack attack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white38),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  attack.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              if (attack.damage != null)
                Text(
                  attack.damage!,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
            ],
          ),
          if (attack.cost != null && attack.cost!.isNotEmpty) ...[
            const SizedBox(height: 4),
            Wrap(
              spacing: 4,
              children: attack.cost!
                  .map((energy) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          energy,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
          if (attack.text != null) ...[
            const SizedBox(height: 4),
            Text(
              attack.text!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({
    required this.label,
    required this.value,
    this.color,
  });

  final String label;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: TextStyle(
                color: color ?? Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
