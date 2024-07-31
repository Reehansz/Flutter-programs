import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUExtended extends StatelessWidget {
  const PESUExtended({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SampleContainer(color: Colors.purple, label: 'Pokemon'),
        // const SizedBox(height: 30,),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Image.asset('images/pokemon-1.png')),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.blue,
                    label: '1',
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.pink,
                    label: '2'
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.green,
                    label: '3'
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Image.asset('images/pokemon-2.png')),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                  color: Colors.blue,
                  label: '1',
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.pink,
                    label: '2'
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.green,
                    label: '3'
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Image.asset('images/pokemon-3.png')),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                  color: Colors.blue,
                  label: '1',
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.pink,
                    label: '2'
                ),
              ),
              const Expanded(
                flex: 1,
                child: SampleContainer(
                    color: Colors.green,
                    label: '3'
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
