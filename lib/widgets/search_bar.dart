import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
                ),
              ),
              labelText: 'Pesquisar',
              labelStyle: const TextStyle(color: Colors.white, fontSize: 14.0),
              fillColor: Colors.blue[700],
              filled: true,
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14.0),
          ),
      ]),
    );
  }
}
