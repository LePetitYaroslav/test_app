import 'package:flutter/material.dart';

class CreateAuth extends StatefulWidget {
  const CreateAuth({Key? key}) : super(key: key);

  @override
  _CreateAuthState createState() => _CreateAuthState();
}

class _CreateAuthState extends State<CreateAuth> {
  

  Widget styleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff91a5c0),
        fontSize: 23,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 6, 20, 0),
            child: Text(
              'Use 4-digits PIN',
              style: TextStyle(
                color: Color(0xff91a5c0),
                fontSize: 16,
              ),
            ),
          )
        ],
        toolbarHeight: 30,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Setup PIN',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              styleText('Create PIN'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              PinButton(), PinButton(), PinButton(), PinButton(),
              
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              NumberButton(
                number: 1,
              ),
              NumberButton(
                number: 2,
              ),
              NumberButton(
                number: 3,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              NumberButton(
                number: 4,
              ),
              NumberButton(
                number: 5,
              ),
              NumberButton(
                number: 6,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              NumberButton(
                number: 7,
              ),
              NumberButton(
                number: 8,
              ),
              NumberButton(
                number: 9,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              NumberButton(
                number: 0,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;
  // final ValueSetter<int> onPress;

  // List<String> password = [];

  const NumberButton({
    Key? key,
    required this.number,
    
    // required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // onPressed: () => onPress.call(password.add(number.toString())),   
      /* - должна быть такая реализация,далее через длину массива активироваться Radio Btn,и когда длина массива 4 либо новый роут либо перересовка 'Create Pin' с последующим поп меню. */
      /* но у меня ппц мало опыта,поэтому такой говно код :) еще и не отрефакторенный,ибо работаю)) */
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        shape: const CircleBorder(),
        primary: const Color(0xfff5f6f9),
        padding: const EdgeInsets.all(20),
        onPrimary: const Color(0xfff5f6f9),
        enableFeedback: false,
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 30,
          color: Color(0xff768eae),
        ),
      ),
    );
  }
}

class PinButton extends StatefulWidget {
  const PinButton({Key? key}) : super(key: key);

  @override
  _PinButtonState createState() => _PinButtonState();
}

class _PinButtonState extends State<PinButton> {
  @override
  Widget build(BuildContext context) {
    int selectedValue = 1;
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: const Color(0xff91a5c0),
        
      ),
      child: Radio<int>(
        activeColor: Colors.indigo[700] ,
        splashRadius: 0,
        value: 0,
        groupValue: selectedValue,
        onChanged: (value) => setState(() => selectedValue = 1),
      ),
    );
  }
}
