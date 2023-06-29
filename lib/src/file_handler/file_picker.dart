import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:logger/logger.dart';

class FilePickerService {
  FilePickerService(this._logger);
  final Logger _logger;

  static const String extension = 'json';

  Future<File?> pickFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: 'Open file',
      type: FileType.custom,
      allowedExtensions: [extension],
    );

    if (result == null) {
      _logger.v('File picker aborted');
      return null;
    }

    return File(result.files.single.path!);
  }

  Future<String?> saveFile() async {
    String? outputFilePath = await FilePicker.platform.saveFile(
      dialogTitle: 'Save file',
      type: FileType.custom,
      allowedExtensions: [extension],
      lockParentWindow: true,
    );

    if (outputFilePath == null) {
      _logger.v('Save file aborted');
      return null;
    }

    // validate path has the extension
    if (!outputFilePath.endsWith('.$extension')) {
      outputFilePath += '.$extension';
    }

    return outputFilePath;
  }
}
