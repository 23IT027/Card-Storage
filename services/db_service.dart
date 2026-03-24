import 'package:hive/hive.dart';

class DBService {
  static const String boxName = "cardsBox";

  Future<Box> openBox() async {
    return await Hive.openBox(boxName);
  }

  Future<void> addCard(Map card) async {
    final box = await openBox();
    await box.put(card['id'], card);
  }

  Future<List> getCards() async {
    final box = await openBox();
    return box.values.toList();
  }

  Future<void> updateCard(String id, Map card) async {
    final box = await openBox();
    await box.put(id, card);
  }
}