import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Burgers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      image: 'assets/images/burger1.jpg',
      nome: 'Burger Clássico',
      descricao: 'Pão, carne, queijo, alface, tomate e maionese',
      preco: 'R\$ 15.99',
    ),
    MenuItem(
      image: 'assets/images/burger2.jpg',
      nome: 'Burger de Frango',
      descricao: 'Pão, frango grelhado, queijo, alface e molho especial',
      preco: 'R\$ 14.99',
    ),
    MenuItem(
      image: 'assets/images/burger3.jpg',
      nome: 'Burger Vegano',
      descricao:
          'Pão vegano, hambúrguer de grão-de-bico, alface, tomate e maionese vegana',
      preco: 'R\$ 16.99',
    ),
    MenuItem(
      image: 'assets/images/burger4.jpg',
      nome: 'Burger monster',
      descricao:
          'Pão, carne grelhado 120g, 2xqueijo, 2xpresunto, ovo, bacon, alface e molho especial',
      preco: 'R\$ 18.99',
    ),
    MenuItem(
      image: 'assets/images/burger5.jpg',
      nome: 'Burger monster2',
      descricao:
          'Pão, carne grelhado 140g, 3xqueijo, 3xpresunto, 2xovo, 2xbacon, alface e molho especial',
      preco: 'R\$ 19.99',
    ),
    MenuItem(
      image: 'assets/images/burger6.jpg',
      nome: 'Burger delicius',
      descricao:
          'Pão, carne grelhado 160g, 3xqueijo, 3xpresunto, 3xovo, 3xbacon, alface e molho especial',
      preco: 'R\$ 21.99',
    ),
  ];

  final String mensagem = 'Obrigado por escolher o Mobile Burgers!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Burgers'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cover_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (ctx, index) {
                final menuItem = menuItems[index];

                return ListTile(
                  leading: Image.asset(
                    menuItem.image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  title: Text(menuItem.nome),
                  subtitle: Text(menuItem.descricao),
                  trailing: Text(menuItem.preco),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Text(
              mensagem,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  final String image;
  final String nome;
  final String descricao;
  final String preco;

  MenuItem({
    required this.image,
    required this.nome,
    required this.descricao,
    required this.preco,
  });
}
