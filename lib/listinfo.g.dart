// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listinfo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListInfoAdapter extends TypeAdapter<ListInfo> {
  @override
  final int typeId = 0;

  @override
  ListInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListInfo()
      ..taskshort = fields[1] as String
      ..taskslong = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, ListInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.taskshort)
      ..writeByte(2)
      ..write(obj.taskslong);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
