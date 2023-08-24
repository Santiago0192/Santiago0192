import 'package:flutter/material.dart';

void main() {
  
  runApp(const MyApp()); //Le decimos a flutter que en el main queremos que corra la aplicaciÃ³n con la clase "My App"
}

class MyApp extends StatelessWidget { //Definimos la clase MyApp de un StatelessWidget (No se mueve)
  const MyApp({super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  //Creamos el contexto de nuestra clase 
    return MaterialApp( //La clase debe retornar algo! En este caso un Widget de tipo MaterialApp
      title: 'Widgets Mas utilizados', //Un atributo de MaterialApp es el titulo de tu app 
      theme: ThemeData( //Otro atributo es theme, nos ayuda a darle color y personalizaciÃ³n de estilo a tu app que puedes utilizar en cualquier lugar
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(19, 116, 206, 1)), //Color principal de mi app
        useMaterial3: true, // Utilizamos Material Design
      ),
      home: const Tarea1(), //Otro atributo de Material App, es la pantalla home , en este caso le paso otra clase, la clase "BirthdayCard"
    );
  }
}

class MyHomePage extends StatelessWidget { //Definimos la clase MyHomePage de un StatelessWidget (No se mueve
  const MyHomePage({super.key}); //Pasamos los parametros como cualquier clase (Esto lo aprendieron en POO)

  @override
  Widget build(BuildContext context) { //Creamos el contexto de nuestra clase
    return Scaffold( //En este caso retornamos un Widget tipo Scaffold, es la pantalla con su appBar
      appBar: AppBar( //Tiene justamente de atributo un App Bar
        backgroundColor: Color.fromARGB(255, 37, 118, 224), //Le damos color, aunque tambiÃ©n podrÃ­a tomarlo del contexto
        title: const Text('Widgets mas utilizados'), //Otro atributo es el tÃ­tulo
      ),
      body: const Row( //Body es lo que esta dentro de mi app principal en este caso un Row
        mainAxisAlignment: MainAxisAlignment.center, //Alineamos lo que esta dentro de mi Row a centrado
        children: [ //Declaramos los "hijos" de mi Row
          Column( //El primer hijo es una columna
            children: [ //Que tiene "hijos al igual que la Row"
              Icon(Icons.thumb_up), //AÃ±adimos un Icono
              Text('507') //AÃ±adimos un texto simple
            ],
          ),
          SizedBox( //El segundo hijo de nuestro Row que es un simple separador
            width: 100, //Un atributo de SizedBox es el tamaÃ±o en este caso 100px
          ),
          Column( //El tercer hijo de nuestro Row es una columna Y se repite lo de arriba 
            children: [
              Icon(Icons.thumb_down),
              Text('507')
            ]
          ),
        ],
      ),
      
    );
  }
  
}
class Tarea1 extends StatefulWidget {
  const Tarea1({super.key});

  @override
  State<Tarea1> createState() => _Tarea1();
}

class _Tarea1 extends State<Tarea1>{
  bool phoneiphoneSelected = false;
  bool accessibilitySelected = false;
  bool phoneandroidSelected = false;
  bool timerSelected = false;

  @override
  Widget build(BuildContext context) { //Definimos la clase BirthdayCard de un StatelessWidget (No se mueve)
    return Scaffold( //Al igual que arriba lo ponemos en un Scaffold para que tengamos App Bar
      appBar: AppBar(
        centerTitle: false, //Le decimos que no este centrado ya que el default en iOS es centrado
        backgroundColor: Color.fromARGB(255, 24, 130, 201), //Damos color de fondo aunque podrÃ­amos tomarlo del contexto de la app
        
        title: const Text('Mc Flutter', style: TextStyle(color: Color(0xFFFFFFFF)),), //El tÃ­tulo ahora no es un simple texto, aÃ±adimos estilo, color
      ),
      body: Column( //El cuerpo de nuestro Scaffold va a ser una columna
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Los elementos dentro de nuestra columna van a estar espaciados adecuadamente
        children: [ //Vamos a aÃ±adir los hijos de mi columna
          Container( //El primer hijo es un Container, por quÃ©? Los Container se pueden alinear a mi gustÃ³ es uno de sus atributos
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center, //Alineo mi container arriba a la izquierda  
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Column(
                      children: [
                        Icon(Icons.account_circle, color: Colors.black, size: 52),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Flutter McFlutter',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                              
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Experienced App Developer',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    )
                ],
                ),
                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '123 Main Street',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '(415) 555-0198',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          isSelected: accessibilitySelected,
                          alignment: Alignment.center,
                          icon: const Icon(Icons.accessibility, color: Colors.black, size: 36),
                          selectedIcon: const Icon(Icons.accessibility, color: Colors.indigo, size: 36),
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: Text('Accessibility'),
                              duration: Duration(seconds: 2), // You can customize the duration
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            setState(() {
                              accessibilitySelected = !accessibilitySelected;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          isSelected: timerSelected,
                          alignment: Alignment.center,
                          icon: const Icon(Icons.timer, color: Colors.black, size: 36),
                          selectedIcon: const Icon(Icons.timer, color: Colors.indigo, size: 36),
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: Text('Timer'),
                              duration: Duration(seconds: 2), // You can customize the duration
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            setState(() {
                              timerSelected = !timerSelected;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          isSelected: phoneandroidSelected,
                          alignment: Alignment.center,
                          icon: const Icon(Icons.phone_android, color: Colors.black, size: 36),
                          selectedIcon: const Icon(Icons.phone_android, color: Colors.indigo, size: 36),
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: Text('Phone_android'),
                              duration: Duration(seconds: 2), // You can customize the duration
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            setState(() {
                              phoneandroidSelected = !phoneandroidSelected;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          isSelected: phoneiphoneSelected,
                          alignment: Alignment.center,
                          icon: const Icon(Icons.phone_iphone, color: Colors.black, size: 36),
                          selectedIcon: const Icon(Icons.phone_iphone, color: Colors.indigo, size: 36),
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: Text('Phone_iphone'),
                              duration: Duration(seconds: 2), // You can customize the duration
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            setState(() {
                              phoneiphoneSelected = !phoneiphoneSelected;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ),
        ],
      )

    );
  }

}