import 'package:flutter/material.dart';
import './WidgetList.dart';
void main() => runApp(Listtile());
class Listtile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static List <WidgetNameList> widgetList = [WidgetNameList(name:"Container1", description:"Contain one child",child:"yes"),
                                            WidgetNameList(name:"Container2", description:"Contain one child",child:"yes"),
                                           WidgetNameList(name:"Container3", description:"Contain one child",child:"yes")];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ListTile'),
      ),
      body: ListView.builder(
            itemCount: widgetList.length,
            itemBuilder:(ct, index){
              return Card(
                elevation: 5,
                              child: ListTile(
                  leading: CircleAvatar(radius: 30,child:Padding( padding: EdgeInsets.all(5),
                                    child: FittedBox(child:Text("Yesdadadasd"),
                    ),
                  ),
                  ),
                  title: Text(widgetList[index].name),
                  subtitle: Text(widgetList[index].description),
                  trailing:
                   IconButton(icon: Icon(Icons.delete),color: Colors.red, onPressed:(){
                    print("delete icon click");
                  }),
                ),
              );
            }
      ),
    );
  }
}
