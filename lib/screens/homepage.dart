
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Search"),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context,
             delegate: MySearchDelegate());
          },
          icon:const Icon(Icons.search_rounded)),
        ],
      ),
    );
  }
}




class MySearchDelegate extends SearchDelegate{
  List  searchResult = [
    "India" ,
    "USA",
    "Chins",
    "Russia",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
  IconButton(onPressed: (){
     query = '';
  },
   icon:const Icon(Icons.clear));
  }

  @override
  Widget? buildLeading(BuildContext context) {
   IconButton(onPressed: (){
    if (query.isEmpty) {
      close(context, null);
    }
    close(context, null);
   }, 
   icon: const Icon(Icons.arrow_back));
   
  }

  @override
  Widget buildResults(BuildContext context) =>Center(
    child: Text(query,style: const TextStyle(
      fontSize: 64,fontWeight: FontWeight.bold
    ),), 
  );
  @override
  Widget buildSuggestions(BuildContext context) {

    List   suggestions = searchResult.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
  
   return ListView.builder(
    itemCount: suggestions.length,
    itemBuilder:(context,index) {
      final suggestionsd = suggestions[index];
      return ListTile(
        title: Text(suggestionsd),
        onTap: (){
          query = suggestionsd;
          showResults(context);
        },
      );
    }
    );
  }
 
}