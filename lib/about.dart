import 'package:contact/icon_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              child:Column(
                children: [
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("My Task", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048))),
                  IconContainer(size:30,width:80,height: 80,bgColor: Color(0xFF3d9398),index: 0,borderColor: Colors.grey,)
                ],
              ),
                const SizedBox(height:20),
                  Row(
                    children: [
                      const IconContainer(size:30,width:80,height: 80,bgColor: Color(0xFFe46471),index: 1,borderColor: Colors.grey,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("My Task", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048))),
                          Text("I have tasks to do", style: TextStyle(fontSize: 24,color:Color(0xFFa6a299))),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height:20),
                  Row(
                    children: [
                      const IconContainer(size:30,width:80,height: 80,bgColor: Color(0xFFf7be7c),index: 2,borderColor: Colors.grey,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("April Tasks", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048))),
                          Text("Business Trip", style: TextStyle(fontSize: 24,color:Color(0xFFa6a299))),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height:20),
                  Row(
                    children: [
                      const IconContainer(size:30,width:80,height: 80,bgColor: Color(0xFF6688e4),index: 3,borderColor: Colors.grey,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Location", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048))),
                          Text("Meeting Clients", style: TextStyle(fontSize: 24,color:Color(0xFFa6a299))),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      Text("Active Projects", style: TextStyle(fontSize: 30,color:Color(0xFF1a3048))),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:size.width*0.43,
                        height:250,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color(0xFF3d9393)
                        ),
                        child: Column(
                          children: const [
                            Padding(padding: EdgeInsets.only(left:10,right:10,top:50),
                            child:IconContainer(width:80,height:80,size:30,index:4,bgColor:Color(0xFF3d9393),borderColor:Color(0xFF459ea2)),
                            ),
                            SizedBox(height:20),
                            Text("Medical App", style: TextStyle(fontSize: 22,color: Colors.white),),
                            SizedBox(height:10),
                            Text("They make pills", style: TextStyle(fontSize: 18,color: Colors.white),),
                          ],
                        ),
                      ),
                      Container(
                        width:size.width*0.43,
                        height:250,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xFFe46471)
                        ),
                        child: Column(
                          children: const [
                            Padding(padding: EdgeInsets.only(left:10,right:10,top:50),
                              child:IconContainer(width:80,height:80,size:30,index:5,bgColor:Color(0xFFe46471),borderColor: Colors.grey),
                            ),
                            SizedBox(height:20),
                            Text("Construction", style: TextStyle(fontSize: 22,color: Colors.white),),
                            SizedBox(height:10),
                            Text("Build things", style: TextStyle(fontSize: 18,color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  )

                ],
    ),

            ),
          ))
        ],

      ),
    );
  }
}
