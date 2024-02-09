import 'package:flutter/material.dart';


class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _addNameController = TextEditingController();
  final List<String> _allNames = ['Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank'];
  List<String> _filteredNames = [];



  void initState() {
    super.initState();
    // Initially, all names are displayed.
    _filteredNames = _allNames;
    _controller.addListener(_filterNames);
  }

  void _filterNames() {
    final query = _controller.text.toLowerCase();
    final filteredNames = _allNames.where((name) => name.toLowerCase().contains(query)).toList();
    setState(() {
      _filteredNames = filteredNames;
    });
  }


  void _addName() {
    final newName = _addNameController.text;
    if (newName.isNotEmpty && !_allNames.contains(newName)) {
      setState(() {
        _allNames.add(newName);
        _filterNames(); // Update filtered list based on current search query
      });
      _addNameController.clear(); // Clear input field after adding name
    }
  }

   void _deleteName(String name) {
    setState(() {
      _allNames.remove(name);
      _filterNames(); // Update filtered list after deleting a name
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Bar Example')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              controller: _addNameController,
              decoration: InputDecoration(
                hintText: "Add a name...",
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addName,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
              onSubmitted: (value) => _addName(),
            ),
          ),
            Container(
              height: 600,
             padding: EdgeInsets.all(10),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: _filteredNames.length,
                itemBuilder: (context, index) {
                  return ListTile(

                    tileColor: Colors.grey.shade200,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                   Icons.check_box,
                   color: Colors.blue.shade300,
                    ),
                  title: Text(_filteredNames[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.red.shade300,
                    onPressed: () => _deleteName(_filteredNames[index]),
                  ),
                    );
                },
                  shrinkWrap: true,





              ),
            ),

        ],
      ),

    );
  }
}

