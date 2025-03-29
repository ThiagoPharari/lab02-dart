
class Profesor {
  String? dni;
  String? nombre;
  int? sueldobruto;

  // Constructor
  Profesor(this.dni, this.nombre);
  Profesor.sueldo(this.sueldobruto);

  @override
  String toString() {
    return 'Dni: $dni, Nombre: $nombre, Sueldo Bruto: $sueldobruto'; // 
  }
}

void main() {
  final gomez = Profesor('12345678', 'jaime');
  gomez.sueldobruto = 5000;

  print(gomez.dni);
  print(gomez.nombre);
  print(gomez.sueldobruto);
  print(gomez.toString()); // 
  
  final teobaldo = Profesor.sueldo(4500);
  teobaldo.dni = '7654321';
  teobaldo.nombre = 'godofredo';

  print(teobaldo.dni);
  print(teobaldo.nombre);
  print(teobaldo.sueldobruto);
  print(teobaldo.toString()); // 
  
  
  var sueldofinalgomez = gomez.sueldobruto! - (gomez.sueldobruto! * 0.08);
  print ('El sueldo neto de Gomez es: $sueldofinalgomez');
  
  var sueldofinalteobaldo = teobaldo.sueldobruto! - (teobaldo.sueldobruto! * 0.08);
  print ('El sueldo neto de Teobaldo es: $sueldofinalteobaldo');

}
