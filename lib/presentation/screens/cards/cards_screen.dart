import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {
    'elevation': 0.0,
    'title': 'Elevation 0.0',
    'subtitle': 'Elevation 0.0',
  },
  {
    'elevation': 1.0,
    'title': 'Elevation 1.0',
    'subtitle': 'Elevation 1.0',
  },
  {
    'elevation': 2.0,
    'title': 'Elevation 2.0',
    'subtitle': 'Elevation 2.0',
  },
  {
    'elevation': 3.0,
    'title': 'Elevation 3.0',
    'subtitle': 'Elevation 3.0',
  },
  {
    'elevation': 4.0,
    'title': 'Elevation 4.0',
    'subtitle': 'Elevation 4.0',
  },
  {
    'elevation': 5.0,
    'title': 'Elevation 5.0',
    'subtitle': 'Elevation 5.0',
  },
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screeen')),
      body: const _CardView(),
      // link route /cards
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CardType1(
              label: card['title'], elevation: card['elevation'] as double)),
          const SizedBox(height: 50),
          ...cards.map((card) => _CardType2(
              label: card['title'], elevation: card['elevation'] as double)),
          const SizedBox(height: 50),
          ...cards.map((card) => _CardType3(
              label: card['title'], elevation: card['elevation'] as double)),
          const SizedBox(height: 50),
          ...cards.map((card) => _CardType4(
              label: card['title'], elevation: card['elevation'] as double)),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                label,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: colors.outline)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '$label - outline',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '$label - filled',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/500/300',
            fit: BoxFit.cover,
            height: 350,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
          ),
        ],
      ),
    );
  }
}
