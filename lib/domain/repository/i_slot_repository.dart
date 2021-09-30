import 'package:random_slot_game/domain/entity/slot/slot.dart';

abstract class ISlotRepository {
  Future<Slot> find();
}
