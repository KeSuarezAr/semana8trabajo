# Exploración del Contexto y Principios de Diseño en Flutter

Repositorio [AQUI](https://github.com/KeSuarezAr/semana8trabajo)

### Creamos la Pantalla de Perfil de Usuario:

Utilizando widgets que requieran el uso de contexto y aplicar los principios de diseño seleccionados en la interfaz.

```
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfile()),
            );
          },
          child: const Text('Ir a Perfil de Usuario'),
        ),
      ),
    );
  }
}
```

### Responsividad:

- Implementar un diseño que responda a cambios de orientación y tamaño de pantalla.

```
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
```
