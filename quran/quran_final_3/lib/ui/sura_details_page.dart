import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/widgets.dart';


class SuraDetailsPage extends StatefulWidget {
  SuraDetailsPage({Key key, this.name, this.suraNum}) : super(key: key);
  final String name;
  final String suraNum;

  @override
  State<StatefulWidget> createState() {
    return _SuraDetailsPageState();
  }
}


class _SuraDetailsPageState extends State<SuraDetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সূরা ${widget.name}"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/ayats_bn.json'),
          builder: (context, snapshot) {
            var myData = jsonDecode(snapshot.data.toString());
            // print(myData);

            return ListView.builder(
              itemCount: myData == null ? 0 : myData.length,
              itemBuilder: (BuildContext context, int index) {

                int inputSuraNumber = int.parse(widget.suraNum);
                int suraNumber = int.parse(myData[index]['sura']);

                return Container(
                    child: inputSuraNumber == suraNumber
                        ? Padding(
                          padding: const EdgeInsets.only(left: 3.0, right: 3.0, top: 3.0),
                          child: Card(
                              elevation: 1.6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  //leading: Text("${myData[index]['aya']} |"),
                                  title: Text(myData[index]['text'], style: TextStyle(
                                      fontSize: 21,
                                      letterSpacing: 1.6,
                                      fontWeight: FontWeight.w300,
                                  ),),

                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 13.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        Text("আয়াত - ${myData[index]['aya']}", style: TextStyle(
                                          fontSize: 13,
                                          letterSpacing: 1.6,
                                          fontWeight: FontWeight.w300,
                                        ),),
                                        Text("সূরা - ${myData[index]['sura']}", style: TextStyle(
                                          fontSize: 13,
                                          letterSpacing: 1.6,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        )
                        : null);
              },
            );
          },
        ),
      ),
    );
  }
}
