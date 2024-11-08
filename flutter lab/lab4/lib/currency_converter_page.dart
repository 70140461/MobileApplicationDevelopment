import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() =>
  _CurrencyConverterPageState();
}

class _CurrencyConverterPageState
extends State<CurrencyConverterPage>{
  double result =0;
  TextEditingController textEditingController = TextEditingController();
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 108, 108),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            result.toString(),
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:textEditingController,
              decoration: const InputDecoration(
                hintText: "please",
                hintStyle: TextStyle(color: Color.fromARGB(255, 147, 143, 148)),
                prefixIcon: Icon(
                  Icons.monetization_on,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 147, 143, 148),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 175, 171, 175), width: 2.0, style: BorderStyle.solid),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 149, 147, 150), width: 2.0, style: BorderStyle.solid),
                ),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                result = double.parse(textEditingController.text) * 300;
              });
              // debugPrint('pressed');
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 148, 147, 158)),
              foregroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 148, 147, 158)),
            ),
            child: const Text(
              'convert',
              style:TextStyle(color:Colors.black),
            )
          )
        ],
      ),
    );

  }
}

