import 'package:flutter/material.dart';

class ProperitiesDropDownMenu extends StatefulWidget {
  const ProperitiesDropDownMenu({super.key});

  @override
  State<ProperitiesDropDownMenu> createState() =>
      _ProperitiesDropDownMenuState();
}

class _ProperitiesDropDownMenuState extends State<ProperitiesDropDownMenu> {
  String dropdownvalue = 'All Areas';

  var items = ['All Areas', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
