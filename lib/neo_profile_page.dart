import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NeoProfilePage extends StatelessWidget {
  const NeoProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neo Profile'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationVersion: '1.0.0-b1',
                  applicationIcon: const FlutterLogo(),
                  applicationLegalese: 'Meu primeiro App Flutter.',
                  applicationName: 'iProfile');
            },
            icon: const Icon(
              Icons.question_mark,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FilledButton(
                      onPressed: () {},
                      child: const Text('FilledButton'),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //TODO: Incluir Widgets com destaques de seu perfil
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.facebook),
                    title: const Text('facebook.com/seuperfil'),
                    onTap: () {
                      //TODO: Incluir dados do seu perfil com o método abrirUrl()
                    },
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.instagram),
                    title: const Text('instagram.com/seuperfil'),
                    onTap: () {
                      //TODO: Incluir dados do seu perfil com o método abrirUrl()
                    },
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.github),
                    title: const Text('github.com/usuario'),
                    onTap: () {
                      //TODO: Incluir dados do seu perfil com o método abrirUrl()
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          //TODO: Incluir dados do seu perfil com o método abrirUrl()
        },
        child: const FaIcon(FontAwesomeIcons.linkedinIn),
      ),
    );
  }

  Future<void> abrirUrl(String url) async {
    if (!await launchUrlString(url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Não foi possível abria a url: $url');
    }
  }
}
