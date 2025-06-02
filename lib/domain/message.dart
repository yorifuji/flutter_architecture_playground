class Message {
  final String message;
  final DateTime timestamp;

  Message({required this.message, required this.timestamp});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      message: json['message'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
