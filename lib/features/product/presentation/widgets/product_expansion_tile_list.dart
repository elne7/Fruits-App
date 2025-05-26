import 'package:expansion_tile_list/expansion_tile_list.dart';
import 'package:flutter/material.dart';

class ProductExpansionTileList extends StatefulWidget {
  const ProductExpansionTileList({super.key});

  @override
  State<ProductExpansionTileList> createState() =>
      _ProductExpansionTileListState();
}

class _ProductExpansionTileListState extends State<ProductExpansionTileList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ExpansionTileList(
        trailing: Icon(Icons.keyboard_arrow_down_rounded, size: 30),
        children: [
          ExpansionTile(
            title: const Text('Select Weight'),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '50g',
                    groupValue: 'weight',
                    onChanged: (value) {},
                  ),
                  const Text('50 Grams - 4.00 KD'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '1kg',
                    groupValue: 'weight',
                    onChanged: (value) {},
                  ),
                  const Text('1 Kg - 6.25 KD'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '2kg',
                    groupValue: 'weight',
                    onChanged: (value) {},
                  ),
                  const Text('2 Kg - 12.00 KD'),
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Select Addons'),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '50g',
                    groupValue: 'addons',
                    onChanged: (value) {},
                  ),
                  const Text('50 Grams - 4.00 KD'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: '1kg',
                    groupValue: 'addons',
                    onChanged: (value) {},
                  ),
                  const Text('1 Kartoon - 12.00 KD'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
