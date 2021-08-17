import 'package:flutter/material.dart';

class IssueCard extends StatelessWidget {
  final String description;
  final String imageSrc;

  IssueCard({required this.description, required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.blueAccent,
          margin: EdgeInsets.all(20),
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0))),
          child: Container(
            height: 130,
            padding: const EdgeInsets.all(0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 130,
                  child: Hero(
                    tag: imageSrc,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageSrc),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      color: Color.fromRGBO(255, 250, 250, 1),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                            height: 50,
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  description,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
