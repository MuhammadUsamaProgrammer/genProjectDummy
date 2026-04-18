part of '../../wird_book.dart';

typedef PFile = PlatformFile;
typedef PFiles = List<PlatformFile>;

@immutable
class FilePickerService {
  const FilePickerService._();
  static const docTypes = <String>['pdf', 'docx', 'doc', 'txt', 'pptx', 'ppt'];
  static Future<List<PFile>?> pickerFiles({
    List<String> allowedExtensions = docTypes,
    bool allowMultiple = true,
  }) async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: allowMultiple,
    );
    if (result != null && result.files.isNotEmpty) {
      // Filter by allowed extensions
      final filteredFiles = result.files.where((file) {
        final extension = file.extension?.toLowerCase();
        return extension != null && allowedExtensions.contains(extension);
      }).toList();
      return filteredFiles.isEmpty ? null : filteredFiles;
    }
    return null;
  }

  static Future<File> uint8ListToFIle(Uint8List imageInUnit8List) async {
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/image.png').create();
    file.writeAsBytesSync(imageInUnit8List);
    return file;
  }
}
