import 'package:flutter/material.dart';

class Frutas extends StatefulWidget {
  const Frutas({Key? key}) : super(key: key);

  @override
  State<Frutas> createState() => _FrutasState();
}

class itensFrutas {
  late final String nome;
  late final String imagem;
  late final String preco;

  itensFrutas({required this.nome, required this.imagem, required this.preco});
}

class _FrutasState extends State<Frutas> {
  final List<itensFrutas> _catalagoFrutas = <itensFrutas>[
    itensFrutas(nome: 'teste1', imagem: 'hhh', preco: '\R\$5'),
    itensFrutas(nome: 'teste2', imagem: 'hhh', preco: '\R\$5'),
    itensFrutas(nome: 'teste3', imagem: 'hhh', preco: '\R\$5'),
    itensFrutas(nome: 'teste4', imagem: 'hhh', preco: '\R\$5'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(4.0),
              children: _catalagoFrutas.map((itensFrutas photo) {
                return TravelDestinationItem(
                  destination: photo,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class TravelDestinationItem extends StatelessWidget {
  static const double height = 566.0;
  final itensFrutas destination;

  const TravelDestinationItem({Key? key, required this.destination})
      : super(key: key);

  // final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? titleStyle =
        theme.textTheme.headline1?.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme as TextStyle;

    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        height: height,
        child: GestureDetector(
          onTap: () {},
          child: Card(
            // shape: shape,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // photo and title
                SizedBox(
                  height: 150.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          destination.imagem,
                          // package: destination.assetPackage,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        // padding: EdgeInsets.all(5.0),
                        child: IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
                // description and share/explore buttons
                const Divider(),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                    child: DefaultTextStyle(
                      style: descriptionStyle,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // three line description
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              destination.nome,
                              style: descriptionStyle.copyWith(
                                  color: Colors.black87),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              destination.preco,
                              style: descriptionStyle.copyWith(
                                  color: Colors.black54),
                            ),
                          ),
                          // Text(destination.description[1]),
                          // Text(destination.description[2]),
                        ],
                      ),
                    ),
                  ),
                ),
                // share, explore buttons
                Container(
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
