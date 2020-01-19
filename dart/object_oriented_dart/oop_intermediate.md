> <h1 style="text-align: center; color: #eb5424">Intemediate Object Oriented Programming</h1>

> <h3 style="color: #eb5424">$ এই অধ্যায়ে আমরা যেই topis গুলো দেখার চেষ্টা করবো তা নিচে দেওয়া হল - </h3>
        ১। Getters, Setters এবং private variable declare করার পদ্দতি
        ২। Dart এর Inheritance
        ৩। Demo-Implementing Inheritance
        ৪। Method Overriding
        ৫। Inheritence with constructor
        ৬। Abstract Class এবং Methods
        ৭। Interface
        ৮। Static Methods এবং Variables


> <h3  style="color: #eb5424">$ ১। Getters, Setters এবং private variable declare করার পদ্দতি -</h3>
এই পর্যায়ে আমরা দেখার চেষ্টা করবো আমরা কীভাবে আমাদের প্রোগ্রাম এর মধ্যে Getters, Setters এবং private variable ব্যাবহার করতে পারি, আমরা সাধারণত getters এবং setters ব্যাবহার করি যখন আমাদের class এর কোন field variable বা propertie কে আমাদের class এর বাইরে থেকে access করতে হয় তখন আমরা এই getters এবং setters ব্যাবহার করি, নিচে একটি উদাহরণ এর মাধ্যমে তা দেখান হল -

	** কি কি শিখব আমরা এইখানে -
		১ - Default Getters এবং Setters এর ব্যাবহার 
		২ - Custom Getters এবং Setters এর ব্যাবহার
		৩ - Private Instance variable এর ব্যাবহার

><h3 style="color: #832561">১ - Default Getters এবং Setters এর ব্যাবহার - </h3>
```dart
	// ১ - Default Getters এবং Setters এর ব্যাবহার
	void main() {
		Student student = Student();
		student.name = "Rahim"; // Calling the default Setter -> এখানে আমরা default Setter ব্যাবহার করছি, এটা by default ক্লাস এর Instance variable তৈরি করার সময় compiler আমাদের দিবে getter
		print(student.name); // Calling the default Getter -> এখানে আমরা default Getter ব্যাবহার করছি, এটা by default ক্লাস এর Instance variable তৈরি করার সময় compiler আমাদের দিবে ।
	}

	class Student {
		int id; // Instance variable
		String name; // Instance variable
	}
```

><h3 style="color: #832561">২ - Custom Getters এবং Setters এর ব্যাবহার</h3>

	প্রথমেই আমি কিছু প্রশ্ন দিয়ে শুরু করতে চাচ্ছি -
		১। আমরা কেন Custom Getter এবং Custom Setter ব্যাবহার করবো ?
		উত্তরঃ অনেক সময় আমরা আমাদের ক্লাস থেকে কেবল field instance ছাড়াও আমরা চাই যে আমাদের এই Setter আমাদের জন্যে কিছু কাজ করে দিবে যেমন আমাদের Student class এর মধ্যে আমরা চাই যে একজন Student কত percentage number পেল তা দিবে, তার মানে আমাদের percentage এর Getter এবং Setter প্রয়োজন এখন এই Setter এর মধ্যে অবশ্যই কিছু Calculation করতে হবে আমাদের কাঙ্ক্ষিত result এর জন্যে । আমাদের Setter Calculation করে আমাদেরকে একটা  রেজাল্ট দিবে অতএব আমাদের একটা Custom Setter তৈরি করতে হবে । নিচে উদাহরণ এর মধ্যে দেওয়া হল -

```dart
void main() {
	Student student = Student();
	student.percentage = 200; // Calling custom Setter to set value -> এখানে আমরা যেই value Custom Setter এ দিব তা সরাসরি Setter এর parameter হিসাবে যাবে ।
	print(student.percentage); // Calling our Custom Getter to get value
}

class Student {
	String name;
	double percent;

	// Custom setter অবশ্যই একটি parameter নিবে 
	void set percentage(int marksSecured) {   // Instance variable with Custom Setter
		percent = (marksSecured ~/ 500) * 100; // ~/ আমাদেরকে integer division এ সাহায্য করে 
	}

	// Custom getter
	int get percentage {  // Instance variable with Custom Getter
		return percent;
	}
}

// Full code - tested
void main() {
  Student student = Student();
  student.percentage = 450;
  print(student.percentage);
}


class Student {
 
  int id;
  String name;
  
  double percent;

  // Setter এর পূর্বে return type দেওয়া ভাল নাহ ।
  set percentage(double gotNumber) {
    percent = (gotNumber / 500) * 100;
  }
  
  double get percentage {
    return percent;
  }
}
```

><h3 style="color: #832561">৩ - Private Instance variable এর ব্যাবহার - </h3>

	এখানেও প্রথমেই আমি কিছু প্রশ্ন দিয়ে শুরু করতে চাচ্ছি -
		১। আমরা কেন private instance variable ব্যাবহার করবো ?
		উত্তরঃ আমাদের প্রোগ্রামের মধ্যে অনেক important field variable থাকে যা আমরা নির্দিষ্ট ক্লাসের মধ্যে ব্যাবহার করতে চাই তখন আমাদের private variable এর প্রয়োজন হয় তাছার অনেক সময় আমাদের অনেক ক্লাস এর মধ্যের variable এর একই নাম থাকে তখন আমাদের এই private variable naming অনেক কাজে লাগে । ডার্ট প্রোগ্রামিং ভাষার মধ্যে নির্দিষ্ট access modifier নেই আর তার জন্যে আমারা private, protected এসব keyword ব্যাবহার করতে পারবনা, কিন্তু ডার্ট আমাদেরকে private instance variable লিখার সুযোগ করে দেয় একটা symbol এর মাধ্যমে আর এই symbol হচ্ছে "_", তারমানে আমরা "_" ব্যাবহার করে আমাদের Field variable, method এবং class কেও private করে দিতে পারি । নিচের উদাহরণ দেখলে আমারা আরও পরিষ্কার হতে পারি - 

```dart
void main() {}

class Student {
	int _id;
	String _name;
	
}
```


  