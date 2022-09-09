import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class BuscaProduto extends StatefulWidget {
  const BuscaProduto({Key? key}) : super(key: key);

  @override
  State<BuscaProduto> createState() => _BuscaProdutoState();
}

class _BuscaProdutoState extends State<BuscaProduto> {
  TextEditingController textController = TextEditingController();
  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: AnimSearchBar(
                  width: 370,
                  textController: textController,
                  helpText: 'Pesqusiar produto',
                  prefixIcon: Icon(Icons.search_rounded),
                  onSuffixTap: () {
                    showSearch(context: context, delegate: Search(list));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Search extends SearchDelegate {
  Search(List<String> list);

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return <Widget>[
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  late String selectedResult = '';

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  late final List<String> listProdutos;

  // Search(this.listProdutos);

  List<String> recentProdutos = ["Text 4", "Text 3"];

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> sugestionProdutos = [];
    query.isEmpty
        ? sugestionProdutos = recentProdutos
        : sugestionProdutos
            .addAll(listProdutos.where((element) => element.contains(query)));

    return ListView.builder(
      itemCount: sugestionProdutos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(sugestionProdutos[index]),
          leading: query.isEmpty ? Icon(Icons.access_time_filled) : SizedBox(),
          onTap: () {
            selectedResult = sugestionProdutos[index];
            showResults(context);
          },
        );
      },
    );
  }
}
