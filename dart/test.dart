// 

void main(List<String> args) {
  Student student = Student(12, "Rahim");

  student.study();
  student.sleep();
}


class Student {
  int id;
  String name;

  // Making a default constructor
  Student(this.id, this.name);

  void study() {
    print("${this.name} is studying.");
  }

  void sleep() {
    print("${this.name} is sleeping.");
  }
}
