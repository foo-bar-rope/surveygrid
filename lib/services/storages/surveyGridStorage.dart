import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Storage {
  String _basePath;
  String _path;

  Storage(String path) {
    _path = path;
  }

  Future<String> get _localPath async {
    if (_basePath != null) {
      return _basePath;
    }
    final directory = await getApplicationDocumentsDirectory();
    _basePath = directory.path;
    return _basePath;
  }

  Future<File> get _localFile async {
    if (_basePath == null) {
      _basePath = await _localPath;
    }
    return File('$_basePath/$_path.json');
  }

  Future<String> read() async {
    try {
      final file = await _localFile;
      return await file.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> write(Map<String, dynamic> contents) async {
    try {
      final file = await _localFile;
      return file.writeAsString(jsonEncode(contents));
    } catch (e) {
      return null;
    }
  }
}
