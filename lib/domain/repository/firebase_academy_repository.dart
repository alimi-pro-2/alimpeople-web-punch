
import '../model/academy.dart';
import '../model/student.dart';

// TODO: CRUD
abstract interface class AcademyRepository {
  Stream<Academy> get academyStream;

  Future<Academy> getAcademy();

  Future<List<Student>> getStudents();
}
