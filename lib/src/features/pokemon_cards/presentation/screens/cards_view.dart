import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/src/features/pokemon_cards/presentation/manager/pokemon_card_bloc.dart';
import '/src/features/pokemon_cards/presentation/widgets/bottom_loader.dart';
import '/src/features/pokemon_cards/presentation/widgets/card_list_item.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  VoidCallback? _searchListener;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // Store the listener so we can remove it on dispose
    void onSearchChanged() {
      // Forward the query to the BLoC; the BLoC applies debounce
      context.read<PokemonCardBloc>().add(CardsSearched(_searchController.text));
    }
    _searchController.addListener(onSearchChanged);
    // Keep a reference for removal
    _searchListener = onSearchChanged;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PokemonCardBloc, PokemonCardState>(
        builder: (context, state) {
          return NestedScrollView(
            // Do NOT attach the same controller to NestedScrollView; attach it to the inner GridView instead
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                    SliverAppBar(
                      title: const Text('Pok\u00e9Card Dex'),
                      floating: true,
                      pinned: true,
                      expandedHeight: 160,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: 'Buscar cartas...',
                              prefixIcon: const Icon(Icons.search),
                              fillColor: Colors.white.withAlpha(25),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
              ];
            },
            body: Builder(builder: (context) {
              switch (state.status) {
                case PokemonCardStatus.failure:
                  return const Center(child: Text('Fallo al obtener las cartas'));
                case PokemonCardStatus.success:
                  if (state.cards.isEmpty) {
                    return const Center(child: Text('No se encontraron cartas'));
                  }

                  final width = MediaQuery.of(context).size.width;
                  final crossAxisCount = width > 800 ? 3 : 2;
                  return AnimationLimiter(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        childAspectRatio: 0.72,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      controller: _scrollController,
                      itemCount: state.hasReachedMax
                          ? state.cards.length
                          : state.cards.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index >= state.cards.length) return const BottomLoader();
                        return AnimationConfiguration.staggeredGrid(
                          position: index,
                          columnCount: crossAxisCount,
                          child: SlideAnimation(
                            verticalOffset: 40.0,
                            child: FadeInAnimation(
                              child: CardListItem(card: state.cards[index]),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                case PokemonCardStatus.initial:
                  return const Center(child: CircularProgressIndicator());
              }
            }),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    if (_searchListener != null) {
      _searchController.removeListener(_searchListener!);
    }
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PokemonCardBloc>().add(CardsFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll * 0.9);
  }
}