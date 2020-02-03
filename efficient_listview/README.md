# একটি Dynamic ListView তৈরি করার ধাপ -

আমরা ইচ্ছা করলেই একটা সাধারণ একটা ListView তৈরি করতে পারি, নিচের উদাহরণ দেখলেই আমরা বুজতে পারবো আমরা কীভাবে একটি ListView তৈরি করতে পারি ।
```dart
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

ListView.builder(
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  }
); 
```

এখন কথা হচ্ছে আমরা কীভাবে একটা Dynamic ListView তৈরি করতে পারি যা অনেকটা Memory Efficient এবং অনেক Smooth ভাবে কাজ করে ।

এই নিচের প্রক্রিয়ার মাধ্যমে একটা Dynamic ListView দেখতে পারবো - উদাহরঃ

    ধাপ সমূহ - 
      ১। আমাদের Data source থেকে ডাটা পাঠানোর বেবস্থা করতে হবে ।
      ২। আমাদের ডাটা Source কে Widget এ Convert করতে হবে ।
      ৩। আমাদের এই Converted Widget কে ListView এর Children হিসাবে ব্যাবহার করতে হবে ।

```dart


```