# f290_pdm2_person_profile

# Step by Step

## Step 01 - Base

Após a criação do projeto no VSCode:

1. Abra o arquivo `lib/main.dart`;
2. Apague todo o código padrão.
3. Importe o pacote referente ao `Material Design` incluindo a importação na primeira linha.

```dart
import 'package:flutter/material.dart';
```

4. Inclua o trigger method do App.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
```

5. Crie o widget base para o projeto

```dart
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        //TODO: Incluir AppBar

        //TODO: Incluir body com o conteúdo

      ),
    );
  }
}
```

## Step 02 - Estruturando a Base

1. Inclua a AppBar ao Scaffold.

```dart
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Person Profile',
          ),
          actions: [
            //TODO: Exibir versão do App.
          ],
        ),
        //TODO: Incluir body com o conteúdo
      ),
    );
  }

```

2. Inclua a estrutura inicial ao `body` do Scaffold.

```dart
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
      body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView(
                children: [
                  Container(
                    color: Colors.deepOrange,
                  ),
                  Container(
                    color: Colors.deepPurple,
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
```

3. Teste o App.

> Neste ponto temos uma tela dividida em duas seções a primeira seção tem 3/4 da tela e é composta por um PageView; este widget possibilita a transição de widgets com scrolling, em nosso caso, scroll lateral.

## Step 03 - Adicionando conteúdo

1. Inclua a dependencia FontAwesome, no terminal digite:

```shell
flutter pub add font_awesome_flutter
```
2. Importe o pacote font_awesome.

```dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
```


3. Substitua o Container da seção inferior por uma coluna com informações de suas redes sociais no componente `ListTile`.

```dart
Column(
    children: const [
        ListTile(
            leading: Icon(FontAwesomeIcons.facebook),
            title: Text('facebook.com/seufacebookid'),
            onTap: () {},
        ),
        ListTile(
            leading: Icon(FontAwesomeIcons.instagram),
            title: Text('instagram.com/seuinstagramid'),
            onTap: () {},
        ),
    ],
),
```
4. Teste o App.
5. Inclua o conteúdo à primeira página do `PageView`.
6. Remova o primeiro Conatiner do PageView e adicione a columa com o conteúdo abaixo.

```dart
Column(
    children: [
    SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(
            url,
            fit: BoxFit.cover,
        ),
    ),
    const Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
            'Ricieri Silva',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
            ),
        ),
    ),
    const Divider(
        height: 20,
        thickness: 3,
        indent: 32,
        endIndent: 32,
        color: Colors.blueGrey,
    ),
    const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... ',
            textAlign: TextAlign.justify,
        ),
    ),
  ],
),
```

> Segue o código completo do Step-by-Step.

```dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final url =
      'https://images.pexels.com/photos/10803285/pexels-photo-10803285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ricieri Prifile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Person Profile',
          ),
          actions: [
            //TODO: Exibir versão do App.
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView(children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Ricieri Silva',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 3,
                      indent: 32,
                      endIndent: 32,
                      color: Colors.blueGrey,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... Lorem ipsum dolor sit amet... ',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.pink,
                ),
              ]),
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(FontAwesomeIcons.instagram),
                    title: Text('Ricieri Silva'),
                    subtitle: Text('ricieri@gmail.com'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const FaIcon(FontAwesomeIcons.linkedinIn),
        ),
      ),
    );
  }
}

```

5. Teste o App.

# Pratique

Implementamos parcialmente um perfil pessoal com alguns widgets básicos.

Implemente as outras duas páginas com o conteúdo de sua preferencia.

Abaixo segue o catálogo de widgets material, fique a vontade para explorar e testar novos widgets.

[Material Widgets](https://docs.flutter.dev/development/ui/widgets/material)

Este é o catálogo completo [Widgets Catalog](https://docs.flutter.dev/development/ui/widgets)

Esta é a branch inicial, ao acessar o repositório acesse a branch final com uma variação desta implementação; não deixe de acompanhar.
