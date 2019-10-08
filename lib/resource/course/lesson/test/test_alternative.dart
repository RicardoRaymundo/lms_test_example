class TestAlternative {
  String id;
  String title;

  TestAlternative(Map<String, dynamic> data) {
    this._config(data);
  }

  void _config(Map<String, dynamic> data) {
    this.id = data['id'] as String;
    this.title = data['title'] as String;
  }

  factory TestAlternative.generate(Map<String, dynamic> data) {
    return TestAlternative(data);
  }
}
