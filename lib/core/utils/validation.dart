class Validation {
  //============== Name Validation ================================================
  static String? nameValidator(String? name) {
    if (name == null || name.trim().isEmpty) {
      return "Name is required";
    }

    final nameRegExp = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegExp.hasMatch(name.trim())) {
      return "Only letters allowed in name";
    }

    return null;
  }

  //================ Email Validation =========================================
  static String? emailValidator(String? email) {
    if (email == null || email.trim().isEmpty) {
      return "Email is required";
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(email.trim())) {
      return 'Enter a valid email address';
    }
    return null;
  }

  //================ Password Validation ===========================================
  static String? passwordValidator(String? password) {
    if (password == null || password.trim().isEmpty) {
      return "Password is required";
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }

    final passwordRegExp =
    RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{6,}$');

    if (!passwordRegExp.hasMatch(password)) {
      return 'Must contain letters & numbers';
    }

    return null;
  }



  //======================Task title Validation ================================
  static String? taskTitleValidator(String? title) {
    if(title!.trim().isEmpty){
      return "Task title can't be empty";
    }
    else if(title.length < 3){
      return "task description must be 3 character";
    }
    return null;
  }

  //=========================Task Description ==================================

  static String? taskDescriptionValidator(String? description) {
    if(description!.trim().isEmpty){
      return "Task description  can't be empty";
    }
    else if(description.length < 3){
      return "task description must be 3 character";
    }
    return null;
  }





}
