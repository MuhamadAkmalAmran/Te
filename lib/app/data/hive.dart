import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

//Kelas ini mengimplementasikan TokenStore yang kemungkinan besar adalah sebuah antarmuka atau abstract class yang memiliki method delete(), read(), dan write() untuk operasi pada token.
class HiveStore extends TokenStore {
  // variabel yang digunakan untuk mengakses sebuah Box dari Hive. 
  final Box _box;
  HiveStore._internal(this._box);
  // digunakan sebagai kunci untuk menyimpan token di dalam Box.
  static const keyToken = "auth_token";

//create() adalah sebuah static method yang digunakan untuk membuat sebuah instance dari HiveStore. Method ini membuka sebuah Box dengan nama "auth_store" dan mengatur strategi kompaksi untuk box tersebut.
  static Future<HiveStore> create() async {

//metode untuk membersihkan data lama yang tidak diperlukan di dalam Box. Dalam kode ini, jika lebih dari 50 entri dihapus, strategi kompaksi akan dijalankan.
    var box = await Hive.openBox("auth_store",
        compactionStrategy: (entries, deletedEntries) => deletedEntries > 50);
    return HiveStore._internal(box);
  }

//Menghapus token dari _box.
  @override
  void delete() {
    _box.delete(keyToken);
  }

//Membaca token dari _box.
  @override
  Token? read() {
    return _box.get(keyToken);
  }

//Menyimpan token ke _box.
  @override
  void write(Token? token) {
    _box.put(keyToken, token);
  }
}
