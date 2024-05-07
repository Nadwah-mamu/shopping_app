
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping_app/Controller/ApiController.dart';
import 'package:shopping_app/Utils/constants.dart';

class StreamBuilders extends StatelessWidget {
  const StreamBuilders({super.key});


  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
          future: getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final myData = snapshot.data;
              // print(myData);
              return Flexible(fit: FlexFit.loose,
                child: GridView.builder(itemCount: myData.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {

                    return Container(
                      height: 100,
                      width: 100,
                      color: maroonColor,
                      child: Image.network(myData[index]["image"].toString()),
                    );
                  },),
              );
            } else {
              return Text('No data available');

            }
          }
    );


  }
}
