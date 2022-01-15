import 'package:flutter/material.dart';

class CreateAuth extends StatefulWidget {
  const CreateAuth({Key? key}) : super(key: key);

  @override
  _CreateAuthState createState() => _CreateAuthState();
}

class _CreateAuthState extends State<CreateAuth> {
  List<String> password = [];
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
            children: [
              for (var i = 0; i < 4; i++)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: PinIndicator(isActive: true),
                ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          GridView.builder(
            shrinkWrap:true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              childAspectRatio: 1 / 0.5,
            ),
            itemBuilder: (context, index) {
              return PinButton(
                number: index + 1,
                onPress: (number) => print(number),
              );
            },

            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   shrinkWrap: true,
            //   crossAxisCount: 3,
            //   mainAxisSpacing: 20,
            //   childAspectRatio: 1 / 0.6,
            //   children: [
            //     for (var i = 0; i < 12; i++)
            //       PinButton(
            //         number: 1,
            //         onPress: (number) => print(number),
            //       )
            //   ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: PinButton(
                  number: 0,
                  onPress: (number) => print(number),
                ),
              ),
              IconButton(
                onPressed: password.removeLast,
                icon: const Icon(Icons.arrow_back),
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

class PinButton extends StatelessWidget {
  final int number;
  final ValueSetter<int> onPress;

  const PinButton({
    Key? key,
    required this.number,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress(number);
      },
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

class PinIndicator extends StatelessWidget {
  final bool isActive;
  const PinIndicator({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo[700] : Colors.white,
        border: Border.all(
          color: isActive ? Colors.indigo[700]! : const Color(0xff91a5c0),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
