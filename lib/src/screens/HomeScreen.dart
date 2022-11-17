import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/src/blocs/CounterBloc.dart';

class HomeScrreen extends StatelessWidget {
  const HomeScrreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
        return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          /// Number show
          Expanded(
            child: Container(
              child: Center(
                  child: Text(state.toString(),
                      style: const TextStyle(height: 5, fontSize: 32))),
            ),
          ),

          /// create floating action
          Expanded(
            child: Container(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(CounterIncrementPressed());
                      },
                      child: const Center(child: Icon(Icons.exposure_plus_1))),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(CounterDecrementPressed());
                      },
                      child: const Center(child: Icon(Icons.exposure_minus_1))),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(CounterResetPressed());
                      },
                      child: const Center(child: Icon(Icons.restart_alt))),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          )
        ]);
      }),
    );
  }
}
