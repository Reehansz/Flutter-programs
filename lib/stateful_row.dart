import 'package:flutter/material.dart';
import 'package:pokedex/Components/button.dart';
import 'package:pokedex/row.dart';

class PESURowPage extends StatefulWidget {
  const PESURowPage({super.key});

  @override
  State<PESURowPage> createState() => _PESURowPageState();
}

class _PESURowPageState extends State<PESURowPage> {
  MainAxisAlignment alignment = MainAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Row'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          PESURow(mainAxisAlignment: alignment),
          const Divider(),
          PESUButton(
              label: 'Start',
              onPressed: (){
                setState(() {
                  alignment = MainAxisAlignment.start;
                });
              },
              active: alignment == MainAxisAlignment.start,
          ),
          const SizedBox(height: 10,),
          PESUButton(
            label: 'End',
            onPressed: (){
              setState(() {
                alignment = MainAxisAlignment.end;
              });
            },
            active: alignment == MainAxisAlignment.end,
          ),
          const SizedBox(height: 10,),
          PESUButton(
            label: 'Center',
            onPressed: (){
              setState(() {
                alignment = MainAxisAlignment.center;
              });
            },
            active: alignment == MainAxisAlignment.center,
          ),
          const SizedBox(height: 10,),
          PESUButton(
            label: 'Space Evenly',
            onPressed: (){
              setState(() {
                alignment = MainAxisAlignment.spaceEvenly;
              });
            },
            active: alignment == MainAxisAlignment.spaceEvenly,
          ),
          const SizedBox(height: 10,),
          PESUButton(
            label: 'Space Between',
            onPressed: (){
              setState(() {
                alignment = MainAxisAlignment.spaceBetween;
              });
            },
            active: alignment == MainAxisAlignment.spaceBetween,
          ),
          const SizedBox(height: 10,),
          PESUButton(
            label: 'Space Around',
            onPressed: (){
              setState(() {
                alignment = MainAxisAlignment.spaceAround;
              });
            },
            active: alignment == MainAxisAlignment.spaceAround,
          ),
        ],
      ),
    );
  }
}