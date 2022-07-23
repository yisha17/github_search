import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('devfinder'),
        actions: [
          TextButton(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                 const Text('Light',style: TextStyle(
                  color: Colors.white
                ),),
                const Icon(Icons.sunny,color: Colors.white,)
                ,
              ],
            ),
            onPressed: (){
            debugPrint('hello');
            },)
        ],
      ),
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Search Github username...',
                hintStyle: TextStyle(
                  fontFamily: 'SpaceMono'
                )
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const SizedBox(
                height: 40,
                width: 80,
                child: Center(
                  child: Text(
                    'Search',
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                maximumSize: const Size.fromHeight(80),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
