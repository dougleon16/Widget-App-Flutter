import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ui Controls + Tales'),
        ),
        body: const _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTrasportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        //si no queremos el title vamos con switchTile
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Toggle Developer Mode'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),

        ExpansionTile(
            title: const Text('Transportation'),
            subtitle: Text('$selectedTrasportation'),
            children: [
              RadioListTile(
                  title: const Text('Car'),
                  subtitle: const Text('Transportation'),
                  value: Transportation.car,
                  groupValue: selectedTrasportation,
                  onChanged: (value) => setState(() {
                        selectedTrasportation = Transportation.car;
                      })),
              RadioListTile(
                  title: const Text('Plane'),
                  subtitle: const Text('Transportation'),
                  value: Transportation.plane,
                  groupValue: selectedTrasportation,
                  onChanged: (value) => setState(() {
                        selectedTrasportation = Transportation.plane;
                      })),
              RadioListTile(
                  title: const Text('Boat'),
                  subtitle: const Text('Transportation'),
                  value: Transportation.boat,
                  groupValue: selectedTrasportation,
                  onChanged: (value) => setState(() {
                        selectedTrasportation = Transportation.boat;
                      })),
              RadioListTile(
                  title: const Text('Submarine'),
                  subtitle: const Text('Transportation'),
                  value: Transportation.submarine,
                  groupValue: selectedTrasportation,
                  onChanged: (value) => setState(() {
                        selectedTrasportation = Transportation.submarine;
                      }))
            ]),
        //Todo por aqui

        CheckboxListTile(
            title: const Text('Incluir Breakfast'),
            subtitle: const Text('Include Breakfast'),
            value: wantsBreakFast,
            onChanged: (value) => setState(() {
                  wantsBreakFast = !wantsBreakFast;
                })),

        CheckboxListTile(
            title: const Text('Incluir Lunch'),
            subtitle: const Text('Include Lunch'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),

        CheckboxListTile(
            title: const Text('Incluir Dinner'),
            subtitle: const Text('Include Dinner'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
