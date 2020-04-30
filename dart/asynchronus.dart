import 'dart:async';

void main(List<String> args) {
  print("Wait for 10 seconds.....");
  displayNews();
  showDetails();
}

Future delayedTenSeconds() {
  Future delaytedTime = Future.delayed(Duration(seconds: 10), () {
    return "The latest heading are displayed in 10 seconds";
  });
  return delaytedTime;
}

Future showData() {
  Future<String> showDetailsData = Future.delayed(Duration(seconds: 3), () {
    return "Three seconds";
  });
  return showDetailsData;
}

void displayNews () async {
  String result = await delayedTenSeconds();
  print(result);
}

void showDetails() async {
    String show = await showData();
    print(show);
}