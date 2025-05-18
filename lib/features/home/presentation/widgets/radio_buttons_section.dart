import 'package:flutter/material.dart';

enum FilterOptions { offers, free }

class RadioButtonsSection extends StatefulWidget {
  const RadioButtonsSection({super.key});

  @override
  State<RadioButtonsSection> createState() => _RadioButtonsSectionState();
}

class _RadioButtonsSectionState extends State<RadioButtonsSection> {
  FilterOptions? _filter = FilterOptions.offers;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Offers'),
          leading: Radio<FilterOptions>(
            value: FilterOptions.offers,
            groupValue: _filter,
            onChanged: (FilterOptions? value) {
              setState(() {
                _filter = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Free Delivery'),
          leading: Radio<FilterOptions>(
            value: FilterOptions.free,
            groupValue: _filter,
            onChanged: (FilterOptions? value) {
              setState(() {
                _filter = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
