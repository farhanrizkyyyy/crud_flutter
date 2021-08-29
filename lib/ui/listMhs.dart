import 'package:crud_flutter/model/mahasiswa.dart';
import 'package:crud_flutter/model/user.dart';
import 'package:crud_flutter/ui/loginPage.dart';
import 'package:flutter/material.dart';

class ListMhs extends StatefulWidget {
  @override
  _ListMhsState createState() => _ListMhsState();
}

class _ListMhsState extends State<ListMhs> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        // title: Text("Hello, ${user.username}"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Center(
                  child: Container(
                    width: widthScreen / 1.3,
                    height: heightScreen / 4,
                    color: Colors.grey,
                    child: Scaffold(
                      body: Column(
                        children: [
                          Text("Apakah anda yakin?"),
                          Row(
                            children: [
                              RaisedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                                child: Text("Yes"),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("No"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: (dataMhs.length == 0)
          ? Center(
              child: Text("Data kosong."),
            )
          : ListView(
              children: List.generate(
                dataMhs.length,
                (index) => Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(left: 15),
                  height: 75,
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dataMhs[index].nama),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              dataMhs[index].nama = "Naufal";
                              setState(() {});
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              deleteMhs(index);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addMhs(123, "Farhan");
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
