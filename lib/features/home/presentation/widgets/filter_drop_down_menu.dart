import 'package:flutter/material.dart';

class FilterDropDownMenu extends StatefulWidget {
  const FilterDropDownMenu({super.key});

  @override
  State<FilterDropDownMenu> createState() => _FilterDropDownMenuState();
}

class _FilterDropDownMenuState extends State<FilterDropDownMenu> {
  String dropdownvalue = 'All Areas';

  var items = ['All Areas', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: DropdownButton(
          isExpanded: true,
          underline: const SizedBox(),
          menuWidth: MediaQuery.of(context).size.width * 0.8,
          borderRadius: BorderRadius.circular(10),
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 30,
          elevation: 4,
          items:
              items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items, style: const TextStyle(fontSize: 18)),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
