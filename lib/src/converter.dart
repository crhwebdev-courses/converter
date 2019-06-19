import 'dart:io';
import 'package:image/image.dart';

String convertImage(FileSystemEntity selectedFile, String format) {
  //read type cast file as bytes
  final rawImage = (selectedFile as File).readAsBytesSync();

  //decode the image
  final image = decodeImage(rawImage);

  var newImage;

  if (format == 'jpeg') {
    newImage = encodeJpg(image);
  } else if (format == 'png') {
    newImage = encodePng(image);
  } else {
    print('Unsupported file type');
  }

  final newPath = replaceExtension(selectedFile.path, format);

  File(newPath).writeAsBytesSync(newImage);

  return newPath;
}

String replaceExtension(String path, String newExtension) {
  return path.replaceAll(RegExp(r'(png|jpg|jpeg)'), newExtension);
}
