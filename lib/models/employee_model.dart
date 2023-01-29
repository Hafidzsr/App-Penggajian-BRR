// ignore_for_file: no_leading_underscores_for_local_identifiers

class EmployeeModel {
  EmployeeModel({
    required this.id,
    required this.name,
    required this.nip,
    required this.address,
    required this.phoneNumber,
    required this.accNumber,
    required this.salary,
  });
  late final int id;
  late final String name;
  late final String nip;
  late final String address;
  late final String phoneNumber;
  late final String accNumber;
  late final String salary;

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nip = json['nip'];
    address = json['address'];
    phoneNumber = json['phoneNumber'];
    accNumber = json['accNumber'];
    salary = json['salary'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['nip'] = nip;
    _data['address'] = address;
    _data['phoneNumber'] = phoneNumber;
    _data['accNumber'] = accNumber;
    _data['salary'] = salary;
    return _data;
  }
}
