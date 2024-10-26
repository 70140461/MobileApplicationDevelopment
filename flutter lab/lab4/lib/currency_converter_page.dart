import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 126, 108, 108),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          TextDisplay(),
          CustomTextField(),
          CustomTextButton(),
        ],
      ),
    );
  }
}

class TextDisplay extends StatelessWidget {
  const TextDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '0',
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "please",
          hintStyle: TextStyle(color: Color.fromARGB(255, 147, 143, 148)),
          prefixIcon: Icon(
            Icons.monetization_on,
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 147, 143, 148),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Color.fromARGB(255, 175, 171, 175),width: 2.0,style: BorderStyle.solid),),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Color.fromARGB(255, 149, 147, 150),width: 2.0,style: BorderStyle.solid),),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('pressed');
      },
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 108, 105, 109)),
        foregroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 93, 90, 94)),
        fixedSize: WidgetStatePropertyAll<Size>(Size(100, 50)),
      ),
      child: const Text(
        'convert',
      ),
    );
  }
}