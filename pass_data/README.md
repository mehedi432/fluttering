## ফ্ল্যাটার এর মধ্যে আমরা কিভাবে এক পেজ থেকে অন্য পেজ এ ডাটা পাঠাতে পারি ? <hr/>

১।  প্রথমেই  আমরা দুইটা ক্লাস ডিক্লেয়ার করবো <br/> 
        - FirstPage(), <br/>
        - SecondPage() <br/>

এখন আমরা দেখার চেষ্টা করবো আমরা কিভাবে MyHomePage() ক্লাস থেকে ইনক্রিমেন্ট ভ্যালু SecondPage() এ পাঠাতে পারি -<br/> 
এখন আমরা প্রথমে আমাদের প্রথম পেজ এর ভিতরে একটা route ডিফাইন করে দিবো 

```dart
class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _textController,
            ),
          ),
          
          ListTile(
            title: RaisedButton(
              child: Text('Go to second'),
              // এই onTab() এর মধ্যে থেকেই আমরা ডাটা পাঠাবো 
              onPressed: (){
              // একটি MaterialPageRoute() widget নিতে হবে এবং এর ভিতরে আমরা যেই ভ্যালু পাস করতে চাই তা পরের screen এর কন্সট্রাক্টর       এর মধ্যে পাস করে দিতে হবে ।  
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => SecondPage(value: _textController.text,),
                );
                Navigator.of(context).push(route);
              },
            ),
          )
        ],
      ),
    );
  }
}
```


এখন আমরা দেখার চেষ্টা করবো আমরা কিভাবে আমাদের SecondPage() থেকে আমাদের পাসকৃত ডাটা ধরতে পারি -
```dart
class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.value}) : super(key: key);

  final String value;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('${widget.value}'),
      ),
    );
  }
}
```

