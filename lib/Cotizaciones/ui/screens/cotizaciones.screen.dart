import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grupolias/AcuerdosConformidad/ui/screens/acuerdo.screen.dart';

class CotizacionesScreen extends StatelessWidget {
  const CotizacionesScreen({Key? key}) : super(key: key);

  /* DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(2010, 1);
  final lastDate = DateTime(2022, 12);
*/
  opciones(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
              child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        "Tomar una foto",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.blue,
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        "Seleccionar una foto",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(
                      Icons.image,
                      color: Colors.blue,
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Row(children: [
                    Expanded(
                      child: Text("Cancelar",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ]),
                ),
              ),
            ],
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Divider(),
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: const Text(
              'Crear una cotizacion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 30,
                top: 30,
              ),
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 5,
                left: 4,
                right: 4,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLines: 8,
                      decoration: InputDecoration(
                          labelText: 'Descripcion del problema',
                          labelStyle: TextStyle(fontSize: 20),
                          hintText: 'Descripcion',
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(71, 226, 208, 208),
                          contentPadding: EdgeInsets.all(20.0)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //DatePickerDialog(
                    //firstDate: DateTime.now(),
                    //initialDate: DateTime.now(),
                    //lastDate: DateTime.now(),
                    //),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      // controller: costoController,
                      decoration: InputDecoration(
                        hintText: '0.00',
                        labelText: 'Costo Mano de obra',
                        prefixIcon: Icon(Icons.monetization_on_outlined),
                        //icon: Icon(Icons.monetization_on),
                        /*  suffixIcon: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => costoController.clear(),
                        ),*/
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      //controller: _costoController,
                      decoration: InputDecoration(
                        hintText: '0.00',
                        labelText: 'Costo  Materiales',
                        prefixIcon: Icon(Icons.monetization_on_outlined),
                        //icon: Icon(Icons.monetization_on),
                        /*   suffixIcon: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => _costoController.clear(),
                        ),*/
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      // controller: costoController,
                      decoration: InputDecoration(
                        hintText: '0.00',
                        labelText: 'Total',
                        prefixIcon: Icon(
                          Icons.monetization_on_sharp,
                          color: Colors.yellow,
                        ),
                        //icon: Icon(Icons.monetization_on),
                        /*  suffixIcon: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => costoController.clear(),
                        ),*/
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              child: Text("Enviar"),
                              onPressed: () {
                                Get.to(AcuerdoConformidad());
                              }),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
