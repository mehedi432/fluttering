# ডার্ট একটি প্রোগ্রামিং ভাষা -- ১৪-০১-২০২০

### ১। ডার্ট প্রোগ্রামিং ভাষা দিয়ে শুরু --- (১)
  ```dart
    ১। প্রথম ডার্ট প্রোগ্রাম
    // আমদের এই main function আমাদের প্রত্যেকটি প্রোগ্রামেই থাকবে
    void main() {
      print("Hello World");

      // এখানে আমরা calculation ও করতে পারি
      print(2+3);
    }
  ```

  ```dart
    ২। কমেন্ট করার সিস্টেম
    /**
      * এইটা বেশি পরিমাণ description এর জন্যে multiline কমেন্ট
    */
    // আমরা অনেক সহজে আমাদের keyboard এর 'ctrl+/' ব্যাবহার করে একটা লাইনকে কমেন্ট বানাতে পারি ।

    // আমদের এই main function আমাদের প্রত্যেকটি প্রোগ্রামেই থাকবে, এইটা আমাদের অ্যাপ এর entry point
    void main() {
      print("Hello World");

      // এখানে আমরা calculation ও করতে পারি
      print(2+3);
    }
  ```

  ### ২। ডার্ট এর Data Types এবং Variable সমূহ --- (২)
  -------------------------------------------------
  ```dart
     ১। আমরা কীভাবে একটি variable declare করতে পারি ?
      int age = 10;
      var age = 10;
      int hexValue = 0xEDFRFGER;
      print(hexValue); // output = 3940465390


      double salary = 15.0;
      double exponent = 1.42e5;
      print(exponent); // output = 142000.0


      String name = "Mehedi";
      var name = "Mehedi"; 

      bool inAlive = true;
      var isAlive = true;

      // এইটা null দেখাবে console এর মধ্যে এর কারণ হচ
      String nickName;
      print(nickName); // output = null
  ```

    ২। ডার্ট এর মধ্যে দেওয়া built-in ডাটা টাইপ ডার্ট প্রোগ্রামিং ভাষার মধ্যে কিছু built-in ডাটা টাইপ রয়েছে এগুলো হল -
        --------------------------------------------------------------------------
        * Numbers --- (১)
            * int
            * double
        * Strings --- (২)
        * Booleans --- (৩)
        * Lists(Also known as Arrays) --- (৪)
        * Maps --- (৫)
        * Runes(For special character) --- (৬)
        * Symbols --- (৭)

      * সকল ডাটা টাইপ গুলোই ডার্ট প্রোগ্রামিং ভাষার মধ্যে এক একটি Object আর এই জন্যেই value গুলো null হতে পারবে ।

  ```dart
    ৩। Literals কি ?
    ৪। String Interpolation এবং স্ট্রিং এর ব্যাবহার

      // Literals
      /*
        * স্ট্রিং Literals এর  সাধারণ ব্যাবহার 
        * true / false
        * "John Doe"
        * 4.5 / 5
      */
      var isCool = true;
      var name = "John Doe";
      var number = 4.5;

      // Various ways of defining String Literals in Dart

      String s1 = "Single";
      String s2 = "Double";
      String s3 = 'It\'s easy';
      String s4 = "It's easy";


      String s5 = 'A clever brown fox jumps over a lazy dog, that dog is' + 'very clever in that term of making happy the fox never give up.'

      String s6 = 'A clever brown fox jumps over a lazy dog, that dog is' 'very clever in that term of making happy the fox never give up.'


      // String Interpolation

      String name = "Mehedi";
      String fullName = name + "Abdullah";
      String interpolatedName = "name is $name";
      print("The number of characters in String Kevin is " + name.length.toString());      
      
      print("The number of characters in String Kevin is ${name.lrngth.toString()}");


      int numOne = 3;
      int numTwo = 5;
      print("Total is $numOne + $numTwo = ${numOne + numTwo}");
      print("There are of rectangle with length is $numOne and bredth is $numTwo and ares is ${numOne * numTwo}");

  ```

    ৫। ডার্ট এর Constants
       ১। final keyword
       ২। const keyword

  ```dart
      // যদি আমরা আমাদের variable এর মান কখনও পরিবর্তন করতে না চাই তাহলে আমরা final এবং const ব্যাবহার করতে পারি ।

      final String firstName = "Mehedi"; 
      const String lastName = "Abdullah";

      final String fullName = "${firstName + lastName}";
      // Output = MehediAbdullah

      // আমরা ইচ্ছা করলেই এই variable গুলোর মান পরিবর্তন করতে পারবো না
      
      // আমরা এই variable গুলো যখন আমাদের ফিক্সড করা থাকবে তখন আমরা ব্যাবহার করতে পারবো কিন্তু আমরা এইটাকে পরিবর্তন করতে পারবো না 
      final double pi = 3.14;
      const double fi = 1.618;

      /**
        * final এবং const এর মধ্যে পার্থক্য - 
        * final variable একবার set করা যাবে এবং initialize হবে যখন এটাকে access করা হবে
        * const variable গুলো সন্দেহাতীত ভাবে final এবং এটি compile-time constant, এটা compilation এর সময় initialized করা হয় ।
        * Instance variable গুলো final হতে পারবে কিন্তু const হতে পারবে না
          * যদি আমরা const ক্লাস লেভেল এ ব্যাবহার করতে চাই তাহলে আমাদের অবশ্যই static const ব্যাবহার করতে হবে
        * 
      */

      void main() {
        // final keyword
        final cityName = "Dhaka";
        // cityName = "Rajshahi"; // আমরা এটা করতে পারবো না

        final String countryName = "Bangladesh";

        // const keyword
        const double PI = 3.1416;
        const double gravity = 9.8; 
      }

      // class এর মধ্যে const এর ব্যাবহার
      class Circle {
        final color = "red";
        static const PI = 3.1416; // ক্লাস এর মধ্যে আমরা যদি const ব্যাবহার করতে চাই তাহলে আমাদের অবশ্যই static keyword ব্যাবহার করতে হবে । 
      }

    ```

  ### ৩। ডার্ট এর Control Flow Statementঃ
    * এই অধ্যায়ে আমরা শিখার চেষ্টা করবো আমরা কীভাবে আমাদের প্রোগ্রাম এ লজিক ব্যাবহার করতে পারি ।
  ```dart
    ১। if এবং else এর ব্যাবহার 
    void main() {
      // if এবং else Statement

      final int age = 21;
      if (age <= 21) {
        print('You are aged $age and you are allowed to drink.');
      } else {
        print('You need to grow up for drinking.')
      }

      // if else if ladder Statement
      int marks = 70;
      if (marks >= 90 && marks < 100) {
        print("A+ grade");
      } else if (marks >= 80 && marks < 90) {
        print('A grade.');
      } else if (marks >= 70 && marks < 80) {
        print('B grade');
      } else if (marks >= 60 && marks < 70) {
        print('C grade');
      } else if (marks > 30 && marks < 60) {
        print('D grade');
      } else {
        print('Your result is not found');
      }
    }
  ```

    ২। Conditional Expressions
  ```dart
      void main() {
        // condition ? expression1 : expression2;
        // যদি প্রথম condition সত্য হয় তাহলে প্রথম expression execute হবে এবং return করবে প্রথন execution1 এর value, যদি প্রথম condition সত্য না হয় তাহলে expression2 এর value return করবে ।

        int one = 2;
        int two = 3;

        if (one < two) {
          print('Big one');
        } else {
          print('Nothing found');
        }
        
        // Ternary operator
        one < two ? print('Big') : print("Not founde");

        int smallNumber;
  
        // Ternary operator এর value একটা variable এর মধ্যে রাখা 
        smallNumber = _one < _two ? _two : _one;
        print(smallNumber);


      // ২। expressionOne ?? expressionTwo
      // যদি expressionOne null না হয় তাহলে এটার value return করবে অন্যথায় expressionTwo এর value return করবে ।
      
      String name; // এইটার value এই অবস্থায় null
      String namePrint = name ?? "Guest User";
      print(namePrint);

    }
    
  ```
    ৩। switch এবং case এর ব্যাবহার

  ```dart
    void main() {
    // switch ... case Statements
    // এই switch case statement কেবল মাত্র int এবং String এর মধ্যেই কাজ করবে।
  
    String grade = "A";
    
    switch(grade) {
      case "B":
        print("Not so good");
        break;
      case "A":
        print("Good Job dear");
        break;
      // এই default অংশ কেবল চলবে যখন অন্য case গুলো মিথ্যা হবে।  
      default:
        print("You are not good at this.");
    }
  }
```
### ৪। ডার্ট এর loop control statement - Intro to iteration
    ১। Syntax এবং Demo for loops
        ১। For
  ```dart
    List data = [10, 20, 30, 40, 50];
    for(int i=0; i<data.length; i++) {
      print(i);
    }
  ```
        ২। While
  ```dart
    List data = ["Kashem", "Nuru", "Rahim", "Jodu", "Kodu"];

    int i = 0;
    while(i<data.length) {
      print(i);
      i++;
    }
  ```
        ৩। DO-WHILE
  ```dart
    List data = ["Kashem", "Nuru", "Rahim", "Jodu", "Kodu"];
    
    int i = 0;
    do {
      print(i);
      i++;
    } while(i<data.length);
  ```
    ২। break keyword
  ```dart
      // আমরা আমাদের iterator কে যে কোন সময় ইচ্ছা করলে বন্ধ করতে পারি বা break করতে পারি

      List data = [10, 20, 30, 40, 50];
      for(int i=0; i<data.length; i++) {
        if(i == 3) {
          // যখন i এর মান ৩ হবে তখন আমরা আমাদের লুপকে বন্ধ করে দিবে।
          break;
        }
        print(i);
      } 
  ```
    ৩। continue keyword
  ```dart
    // আমরা যদি আমাদের লোপ এর কোন অংশ skip করতে চাই তাহলে আমরা continue ব্যাবহার করতে পারি।
  ```

    ৪। আমরা কীভাবে Label control flow statement এ ব্যাবহার করবো।

### ৫। ডার্ট এর Function এবং এর ব্যাবহার

    ১। Function এর সূচনা
    ২। Syntax এবং Properties of function
    ৩। Function as Expressions
    ৪। Different type of function parameters
      ১। Required parameters
      ২। Optional parameter
        ১। Optional positional parameters
        ২। Optional named parameters
        ৩। Optional default parameters
  
    ১। Function এর সূচনা এবং Demo Function -
    * ডার্ট প্রোগ্রামিং ভাষায় function গুলোও object
        * আমরা ডার্ট এর function কে variable এর মধ্যে রাখতে পারি এবং function parameter হিসাবেও পাঠাতে পারি ।
        * ডার্ট এর সকল function সব সময় কিছু return করেই, যদি কোন return value specify করা না থাকে তাহলে এটা null return করে।
        * ডার্ট এর return type দেওয়াটা optional কিন্তু এটা দেওয়া অনেক ভাল এবং google recommend করে return type দেওয়ার জন্যে।


```dart
  void main() {
    findArea(10, 20);
    
    printCountry("Sudan", "Dubai");

    printCities('Dhaka', 'Sylhet', 'Barisal');
  }

  // Function ---- (1)
  int findArea(int length, int breadth) {
    // Function body: এখানে আমাদের সকল code লিখা লাগবে
    return length * breadth;
  }
  
  // Fat arrow function
  int findArea(int length, int breadth) => length * breadth;

  // Required parameters
  void printCities(String name1, String name2, String name3) {
    print("$name1");
    print("$name2");
    print("$name3");
  }

  // Optional positional parameters
  void printCountry(String name1, String name2, [String name3]) {
    print("$name1");
    print("$name2");
    print("$name3");
  }


```