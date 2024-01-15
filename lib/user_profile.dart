import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  /// Construye un contenedor para pantallas anchas.
  ///
  /// Este método utiliza un widget Row para organizar los elementos horizontalmente.
  /// Primero muestra un CircleAvatar con la foto del usuario.
  /// Luego, en una columna, muestra el nombre y la biografía del usuario en dos widgets Text.
  /// Todo el contenido se centra y se agrega un padding alrededor para darle espacio.
  Widget _buildWideContainer() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            Column(
              children: [
                Text(
                  'Nombre del Usuario',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Bio del Usuario',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Construye un contenedor para pantallas estrechas.
  ///
  /// Este método utiliza un widget Column para organizar los elementos verticalmente.
  /// Primero muestra un CircleAvatar con la foto del usuario.
  /// Luego, muestra el nombre y la biografía del usuario en dos widgets Text.
  /// Todo el contenido se centra y se agrega un padding alrededor para darle espacio.
  Widget _buildNarrowContainer() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Nombre del Usuario',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Bio del Usuario',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainer();
          } else {
            return _buildNarrowContainer();
          }
        },
      ),
    );
  }
}
