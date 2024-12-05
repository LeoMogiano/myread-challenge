import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {

  const SearchField({
    super.key, 
    required this.onChanged
  });

  // onChange 
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onChanged: onChanged,
        decoration:  const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          label: Text('Search', style: TextStyle(color: Colors.grey)),
          prefixIcon:  Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
             borderSide: BorderSide(color: Color.fromARGB(255, 46, 125, 50)),
          ),
        ),
      ),
    );
  }
}