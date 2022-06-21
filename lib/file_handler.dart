import 'dart:io';

class FileHandler {
  Future<String> load_file_async(String file_path) async {
    String res = "Fail";
    try {
      res = await File(file_path).readAsString();
    } catch (e) {}
    return res;
  }
}
