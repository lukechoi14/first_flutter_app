import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFfef9eb),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(18, 50, 18, 25),
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Icon(Icons.menu, size: 30,),
                    Icon(Icons.search, size: 30,)
                  ]
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:80,
                      width: 80,
                      margin: const EdgeInsets.only(left:30, right:30),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('img/pic-6.png')
                        )
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: const [
                        Text("Dylan Ahmed",style: TextStyle(fontSize: 25,color: Color(0xFF0d253e)),),
                        Text("App developer",style: TextStyle(fontSize: 18),),
                      ],
                    ),)
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: const Color(0xFFf7be7c),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left:18, right:18),
              child: Column(
                children: const [
                  Text("My Task", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048)))
                ],
              )
            ),
          ))
        ],

      ),
    );
  }
}
