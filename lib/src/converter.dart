import 'dart:io';
import 'package:image/image.dart';

convertImage(FileSystemEntity selectedFile, String format) {
  //read type cast file as bytes
  final rawImage = (selectedFile as File).readAsBytesSync();

  //decode the image
  final image = decodeImage(rawImage);

  var newImage;

  if (format == 'jpg') {
    newImage = encodeJpg(image);
  } else if (format == 'png') {
    newImage = encodePng(image);
  } else {
    print('Unsupported file type');
  }

  File('lkalksdjfj').writeAsBytesSync(newImage);
}

String replaceExtension(String path, String newExtension) {
  return path.replaceAll(RegExp(r'(png|jpg|jpeg)'), newExtension);
}
