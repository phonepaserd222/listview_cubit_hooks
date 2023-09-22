import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // หากคลาสย่อยมีคุณสมบัติบางอย่าง คลาสย่อยเหล่านั้นจะถูกส่งผ่านไปยังตัวสร้างนี้
  // เพื่อให้ Equatable สามารถเปรียบเทียบค่าได้
  const Failure([List properties = const <dynamic>[]]) : super();
}
