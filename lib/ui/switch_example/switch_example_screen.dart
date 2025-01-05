import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learning/bloc/switch_example/switch_bloc.dart';
import 'package:flutter_bloc_learning/bloc/switch_example/switch_state.dart';

class SwitchExampleScreen extends StatefulWidget {
  const SwitchExampleScreen({super.key});

  @override
  State<SwitchExampleScreen> createState() => _SwitchExampleScreenState();
}

class _SwitchExampleScreenState extends State<SwitchExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example App"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification"),
                BlocBuilder<SwitchBloc, SwitchStates>(
                  builder: (context, state) {
                    return Switch(value: true, onChanged: (value) {});
                  },
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 200.0,
              color: Colors.red.withAlpha((0.2 * 255).toInt()),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Slider(value: 0.4, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
