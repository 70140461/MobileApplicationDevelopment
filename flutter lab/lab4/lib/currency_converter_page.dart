import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
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
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            Icons.monetization_on,
          ),
          filled: true,
          fillColor: Colors.grey,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.grey,width: 2.0,style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(color: Colors.grey,width: 2.0,style: BorderStyle.solid),
          ),
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
        backgroundColor:  WidgetStatePropertyAll<Color>(Colors.grey),
        foregroundColor: WidgetStatePropertyAll<Color>(Colors.grey),
        fixedSize: WidgetStatePropertyAll<Size>(Size(100, 50)),
      ),
      child: const Text(
        'convert',
      ),
    );
  }
}