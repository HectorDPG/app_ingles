import 'package:flutter/material.dart';

class InglesBasico extends StatelessWidget {
  const InglesBasico({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}
const List<Entry> data = <Entry>[
  Entry(
    'First Class',
    <Entry>[
      Entry(
        'Nouns (Sustantivos)',
        <Entry>[
          Entry('Hello      (Hola)',),
          Entry('Today      (Hoy)'),
          Entry('Someone    (Alguien)'),
          Entry('Sun        (Sol)'),
          Entry('Moon       (Luna)'),
          Entry('Hand       (Mano)'),
          Entry('Pencil     (Lapicero)'),
          Entry('Book       (Libro)'),
          Entry('Rice       (Arroz)'),
        ],
      ),
    ],
  ),
  Entry(
    'Second Class',
    <Entry>[
      Entry( 
        'Verbs (Verbos)',
        <Entry>[
          Entry('Run        (Correr)'),
          Entry('Write      (Escribir)'),
          Entry('Want       (Querer)'),
          Entry('Tell       (Decir)'),
          Entry('Admire     (Admirar)'),
          Entry('Cook       (Cocinar)'),
          Entry('Sleep      (Dormir)'),
          Entry('Work       (Trabajar)'),
          Entry('Play       (Jugar)'),
          Entry('Shower     (Bañar)'),
        ],
      ),
      
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(
      title: Text(root.title, style: TextStyle(fontSize: 20),));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title, style: TextStyle(fontSize: 20)),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
