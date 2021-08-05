import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:'simple calculator',
    home:SIForm(),

  ));
}
class SIForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return SIFormState();
  }
}
class SIFormState extends State<SIForm>{
  var _currencies = ['Rupees','Dollars','pounds'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text('simple calculator'),
      ),
    body: Container(
      child:Column(
        children: <Widget>[
         Padding(padding:EdgeInsets.only(top:5),
      child: TextField(
            keyboardType: TextInputType.number,
           decoration:InputDecoration(
           labelText:'principal',
           hintText:'enter the principal amount:',
               border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(5)
             )
           )
          )),

         Padding(
           padding: EdgeInsets.only(top: 10),

             child: TextField(
              keyboardType: TextInputType.number,
              decoration:InputDecoration(
                  labelText:'rate of interest',
                  hintText:'enter the rate in percent:',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  )
              )
         )),

         Padding(
           padding: EdgeInsets.only(top: 10,right:10),
             child: Row(
            children: <Widget>[
             Expanded(child:TextField(
               keyboardType: TextInputType.number,
               decoration:InputDecoration(
                   labelText:'time period',
                   hintText:'enter the time:',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5)
                   )
               ),
             )),

             Container(width: 5.0),
             Expanded(child: DropdownButton<String>(
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                value:'Rupees',
                onChanged: (String ) {

                },








              ))

            ],
          )),
          Row(children: <Widget>[
            Expanded(
              child:RaisedButton(
                child:Text('calculate'),
                onPressed: (){

                },
              ),
            ),
            Expanded(
              child:RaisedButton(
                child:Text('Reset'),
                onPressed: (){

                },
              ),
            ),
          ],
          )




        ],
     ),
    ),);

  }
}


