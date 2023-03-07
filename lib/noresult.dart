import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class InitialState extends StatelessWidget {
  const InitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 200,
        ),
        Center(
            child:
                Text("Key in symptoms and click query for your diagnosis:)-")),
      ],
    );
  }
}
