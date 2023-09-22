import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:listview_cubit_hooks/core/error/failures.dart';

//ต้องใส่พารามิเตอร์ลงในวัตถุคอนเทนเนอร์เพื่อให้สามารถเป็นได้
// รวมอยู่ในคำจำกัดความของวิธีการคลาสพื้นฐานเชิงนามธรรมนี้
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// สิ่งนี้จะถูกใช้โดยโค้ดที่เรียกกรณีการใช้งานทุกครั้งที่มีกรณีการใช้งาน
// ไม่ยอมรับพารามิเตอร์ใดๆ
class NoParams extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
