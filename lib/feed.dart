import 'package:contact/people_model.dart';
import 'package:contact/person_detail_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Person> persons = [
    Person(
      name: 'Bill Will',
      img: 'img/pic-7.png',
      job: 'Software Developer',
      clock: '3:40'
    ),
    Person(
        name: 'Andy Smith',
        img: 'img/pic-2.png',
        job: 'UI designer',
        clock: '5:50'
    ),
    Person(
        name: 'Julie Robert',
        img: 'img/pic-4.png',
        job: 'Software Tester',
        clock: '9:20'
    ),
    Person(
        name: 'Andy Willson',
        img: 'img/pic-5.png',
        job: 'Software Developer',
        clock: '3:40'
    ),
    Person(
        name: 'Kim Jun Hyung',
        img: 'img/pic-6.png',
        job: 'Manager',
        clock: '9:40'
    ),
    Person(
        name: 'Park Eun Su',
        img: 'img/pic-1.png',
        job: 'Software Genius',
        clock: '10:40'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB( 18, 50, 18, 18),
          color: const Color(0xFFf7be7c),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Feed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36),),
              Icon(Icons.format_align_center_outlined,size:30,)
            ],
          )
        ),
        Expanded(child: SingleChildScrollView(
          child: Column(
            children: persons.map((p) {
              return PersonDetailCard(person:p);
            }).toList()

          ),
        ))
      ],
    );
  }
}
