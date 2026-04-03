// Model
// Data Type
class Doctor
{
  String name;
  String spe;
  int fee;
  String clinicAddress;
  String photo;
  String? mobile;
  String? hospital;

  Doctor({
    required this.name,
    required this.spe,
    required this.fee,
    required this.clinicAddress,
    required this.photo,
    this.mobile,
    this.hospital,
  });

}