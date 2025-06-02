class Greeting {
  final String greeting;

  Greeting({required this.greeting});

  factory Greeting.fromJson(Map<String, dynamic> json) {
    return Greeting(greeting: json['greeting']);
  }
}
