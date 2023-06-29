import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';

class FileService {
  final Logger _logger;
  final JsonEncoder _prettyEncoder = const JsonEncoder.withIndent('  ');

  FileService(this._logger);

  Future<({List<Map<String, dynamic>>? files, String? error})> readFilesFromDirectory(String projectPath) async {
    final Directory dir = Directory(projectPath);

    List<FileSystemEntity> entities;
    try {
      entities = await dir.list().toList();
    } catch (e) {
      return (error: e.toString(), files: null);
    }

    final List<Map<String, dynamic>> list = [];

    for (final item in entities) {
      final File file = File(item.path);
      final (:data, :error) = await readJsonFromFile(file);

      if (error == null) {
        return (error: error, files: null);
      }

      if (data != null) {
        list.add(data);
      }
    }
    return (error: null, files: list);
  }

  Future<({Map<String, dynamic>? data, String? error})> readJsonFromFile(File file) async {
    Map<String, dynamic>? data;
    try {
      _logger.i("Reading file from", file.path);
      final String raw = await file.readAsString();
      data = jsonDecode(raw) as Map<String, dynamic>;
    } catch (e) {
      _logger.e(e, data);
      return (data: null, error: e.toString());
    }
    return (data: data, error: null);
  }

  Future<void> writeFile(File file, Map<String, dynamic> data) async {
    final String pretty = _prettyEncoder.convert(data);
    await file.writeAsString(pretty);
  }
}
