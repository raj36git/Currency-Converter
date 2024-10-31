import 'package:flutter/material.dart';
///1. Create a variable that stores the converted currency value
///2. Create a function that multiplies the value given by thr text field
///3. Store the value in the variable that we created
///4. DISPLAY the variable


class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();

}

class _CurrencyConverterState extends State<CurrencyConverter> {

  double result = 0.0;  ///1
  final TextEditingController textController = TextEditingController(); ///2

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    const border = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 4.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 18, 119, 118),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: const [Icon(Icons.exit_to_app)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              //int -> string == intVal.toString();
              //string -> int == int.parse(strVal);
              'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',   ///4
              style:const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 43,
              ),
            ),
             Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: textController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  suffixIcon: Icon(Icons.transit_enterexit),
                  suffixIconColor: Colors.blue,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  // print(_controller.text);
                  // print(double.parse(_controller.text) * 84);
                  setState(() { ///4
                    result = double.parse(textController.text)*84; ///3
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 49),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
