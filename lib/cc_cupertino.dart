import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() => _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState extends State<CurrencyConverterCupertino> {

  double result = 0;  ///1
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
    return CupertinoPageScaffold(
      backgroundColor:const  Color.fromRGBO(92, 122, 190, 1),
      navigationBar: const CupertinoNavigationBar(
        middle: Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(
              color: CupertinoColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ),
        backgroundColor: CupertinoColors.systemGrey,
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              //int -> string == intVal.toString();
              //string -> int == int.parse(strVal);
              'INR ${result.toStringAsFixed(3)}',   ///4
              style:const TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 43,
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: CupertinoTextField(
                controller: textController,
                style: const TextStyle(
                  // color: Color.fromRGBO( 0, 0, 0 , 0.4), //black
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: "Enter the amount in USD",
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.black,
                ),
                prefix:const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            const SizedBox(height: 10,),

            CupertinoButton(
              onPressed: () {
                setState(() { ///4
                  result = double.parse(textController.text)*84; ///3
                });
              },
              color: CupertinoColors.black,
              child: const Text(
                'Convert',
                style: TextStyle(
                  color: CupertinoColors.white, //black
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

