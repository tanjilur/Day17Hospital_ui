class Hospital {
  String name;
  String address;
  String img;

  Hospital(this.name, this.address, this.img);

  static List<Hospital> hospital_list() {
    return [
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Bardem", "Shahbag", "assets/images/p5.jpg"),
      Hospital("BRB", "Pathopath", "assets/images/p6.jpg")
    ];
  }

  static List<Hospital> more_hospital() {
    return [
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Bardem", "Shahbag", "assets/images/p5.jpg"),
      Hospital("BRB", "Pathopath", "assets/images/p6.jpg"),
      Hospital("LabAid", "Dhanmondi", "assets/images/p1.jpg"),
      Hospital("Popular", "Mirpur", "assets/images/p2.jpg"),
      Hospital("City", "Mohakhali", "assets/images/p3.jpg"),
      Hospital("Delta", "Gulsan", "assets/images/p4.jpg"),
      Hospital("Bardem", "Shahbag", "assets/images/p5.jpg"),
      Hospital("BRB", "Pathopath", "assets/images/p6.jpg")
    ];
  }
}
