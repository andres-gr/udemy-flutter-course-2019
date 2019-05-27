import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({
    Key key,
    @required this.products,
  }) : super(key: key) {
    print('Products construct');
  }

  final List<String> products;

  Card _buildCard(String product) => Card(
        child: Column(
          key: const Key('BuildCardColumn'),
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(product),
          ],
        ),
      );

  Widget _buildProductItem(
    BuildContext context,
    int index,
  ) =>
      _buildCard(products[index]);

  Widget _buildList() {
    if (products.length == 0) {
      return Center(
        key: Key('ProductListViewCenter'),
        child: const Text('No products found'),
      );
    }
    return ListView.builder(
      key: const Key('ProductsListViewBuilder'),
      itemCount: products.length,
      itemBuilder: _buildProductItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Products build');
    return Expanded(
      key: Key('ProductsExpanded'),
      child: _buildList(),
    );
  }
}
