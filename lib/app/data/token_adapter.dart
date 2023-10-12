import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

//kelas ini bertanggung jawab untuk mengkonversi objek dari tipe Token ke format biner yang dapat disimpan di Hive, dan sebaliknya.
class TokenAdapter extends TypeAdapter<Token> {
  @override
  //properti yang menentukan ID tipe adapter ini. Ini harus unik dalam konteks Hive.
  final typeId = 42;

  @override
  //metode yang mengonversi objek Token ke format biner dan menulisnya ke writer. Ini dilakukan dengan memanggil metode toMap pada objek Token, yang mengembalikan objek Map.
  void write(BinaryWriter writer, Token token) =>
      writer.writeMap(token.toMap());

  @override
  // metode yang mengonversi format biner yang dibaca dari reader ke objek Token. Ini dilakukan dengan membaca Map dari reader dan kemudian menggunakan map untuk membangun objek Token kembali.
  Token read(BinaryReader reader) =>
      Token.fromMap(reader.readMap().map<String, dynamic>(
          (key, value) => MapEntry<String, dynamic>(key, value)));
}
