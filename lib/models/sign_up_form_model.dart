//begin : create class
class SignupFormModel{

  // begin : create parameter
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? profilePicture;
  final String? ktp;
  // end : create parameter

  // begin :create constructor
  SignupFormModel({
    this.name,
    this.email,
    this.password,
    this.pin,
    this.profilePicture,
    this.ktp,
  });
  // end :create constructor

  // begin : create json format untuk callback ke endpoint
  Map<String, dynamic> toJson(){
    return {
      'name':name,
      'email':email,
      'password':password,
      'pin':pin,
      'profile_picture':profilePicture,
      'ktp':ktp,
    };
  }
  // end : create json format untuk callback ke endpoint

  // begin : create funtion model untuk session halaman
  SignupFormModel copyWith({
    String? profilePicture,
    String? pin,
    String? ktp,
  }) =>
      SignupFormModel(
          name:name,
          email:email,
          password:password,
          pin: pin ?? this.pin,
          profilePicture: profilePicture ?? this.profilePicture,
        ktp:ktp??this.ktp,
      );
  // end : create funtion model untuk session halaman

}
//end : create class
