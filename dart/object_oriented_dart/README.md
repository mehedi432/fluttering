<h2 style="text-align: center"> Object Oriented Programming in Dart - 101</h2><hr/>

> <h3 style="text-align: left"> এই পর্যায়ে আমরা দেখার চেষ্টা করবো আমরা কীভাবে ডার্ট প্রোগ্রামিং ল্যাঙ্গুয়েজ এর মধ্যে class, Objects, Instance এবং reference Variable কি এবং আমরা কীভাবে এটা ব্যাবহার করতে পারি । এই অধ্যায়ে আমরা Constructor এর ব্যাবহার কীভাবে করতে হয় সেটাও দেখার চেষ্টা করবো ।</h3>


#### এই অধ্যায়ে আমরা কি কি শিখব !

  * আমরা কীভাবে ক্লাস এবং Object তৈরি করতে পারি ?
  * কিছু নামের বিবরণ যেমন 
    * Instance variable এবং Field variable
    * ক্লাস এর মধ্যে একটা function বা মেথড তৈরি করা 

  * Constructor কি ?
    * Default constructor 
    * Parameterized constructor 
    * Named constructor
    * Constant constructor

#### আমরা কীভাবে ক্লাস এবং Object তৈরি করতে পারি ?
আমরা নিচের উদাহরণ এর দিকে তাকালে দেখতে পারবো আমরা কীভাবে একটি ক্লাস এবং Object তৈরি করতে পারি । 
```dart
  void main() {
    /**
      * Object তৈরি করা এবং reference variable এর মধ্যে রাখা 
    */ 

    // এখানে student হচ্ছে reference variable এবং new Student দিয়ে আমরা Student ক্লাস এর একটি object তৈরি করলাম , এখানে new keyword optional  
    // Student student = new Student();
    Student student = Student();
    student.name = "Mehedi Abdullah";
    student.id = 1;

    Student studentOne = Student();
    student.name = "Masum Abdullah";
    student.id = 2;

    print("${student.name} এর id হচ্ছে ${student.id}");
  }


  // এখানে আমরা Student নামের একটা class declare করলাম এবং এর state বা properties এবং behavior বা method define করে দিলাম  
  class Student {
    // instance অথবা field variable এবং এর value by defult null
    int id;
    String name;

    void eat() {
      print("${this.name} যার id ${this.id} সে এখন খাচ্ছে");
    }

    void sleep() {
      print("${this.name} যার id ${this.id} সে এখন ঘুমাচ্ছে");
    }
  }
```

> <h3>আমরা কীভাবে constructor ব্যাবহার করতে পারি এবং নানান প্রকার parameters এর ব্যাবহার </h3>

* ### *  Constructor কি ?
    * Constructor class এর একটা অংশ, এটি ব্যাবহার করে আমরা আমাদের ক্লাস এর মধ্যে ভিবিন্ন setup করতে পারি । এটা একটা class কল করার সাথে সাথে initialize হয় এবং run হয় । আমরা constructor এর return type declare করে দিতে পারবো না।
  * Default constructor 
  ```dart
    Student() {
      print("This is a default constructor");
    };
  ```

  * ###  * Parameterized constructor 
    * Parameterized constructor এর ভিতরে আমরা ইচ্ছা করলে ক্লাস instantiate করার সময় এর ভিতরের property গুলোর value দিয়া দিতে পারি । <strong>আমরা একটা ক্লাসের ভিতরে default constructor এবং parameterized constructor ব্যাবহার করতে পারবো না ।</strong>
  ```dart

    void main() {
      Student student = Student(1, "Mehedi Abdullah");
    }

  class Student {
    int id;
    String name;

    // parameterized constructor
    Student(int id, int name) {
      this.name = name; // this.name == এই ক্লাসের property, name == এই ক্লাসের লোকাল variable
      this.id = id;
      print("This is a parameterized constructor");
    }
  }
    // উপরের কোডকে আমরা আরও শর্ট করতে পারি, যেমন - 
    Student(this.id, this.name); // shorthand constructor with two parameters

  ```
  * ###  * Named constructor
    * Named constructor এর মাধ্যমে আমরা আমাদের ইচ্ছামতন constructor তৈরি করতে পারি ।
    ```dart
      void main() {
        Student student = Student();

        Student namedStudent = Student.namedConstructor(1, "Mehedi Abdullah");
      }

      class Student {
        int id;
        String name;

        Student(this.id, this.name);

        // Named constructor 
        Student.namedConstructor(this.id, this.name);
      }
    ```
  * <h3 style="color: white"> Constant constructor </h3>

```dart

  // একটি সাধারণ এবং অসাধারণ Student নামক ক্লাস 

  void main() {
    Student student = Student(); // One object, student is reference variable, Student() is act as default constructor
  }

  
  class Student {
    int id;
    String name;
    
    // Default constructor
    // Student()

    // Parameterized constructor
    Student(int id, int name) {
      this.id = id; // এই ক্লাসের property কে this. দিয়া ধরতে হবে 
      this.name = name;
    }

    // উপরের কোডের বিকল্প পদ্দতি
    Student(this.id, this.name);


    void eat() {
      print("${this.id} is named as ${this.name} is eating now.");
    }

    void sleep() {
      print("${this.id} is named as ${this.name} is sleeping now.");
    }
  }
```
