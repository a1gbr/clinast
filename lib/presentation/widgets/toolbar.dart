import 'package:flutter/material.dart';

class Toolbar extends StatefulWidget {
  final Function(String) onSearch;

  final Function onClearSearch;

  const Toolbar({
    Key? key,
    required this.onSearch,
    required this.onClearSearch,
  }) : super(key: key);

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 42,
            child: TextField(
              controller: _searchController,
              onChanged: widget.onSearch,
              decoration: InputDecoration(
                labelText: 'BUSCA',
                border: const OutlineInputBorder(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    widget.onClearSearch();
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
