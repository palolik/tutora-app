import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreference {
  static SharedPreferences? sharedPreferences;

  Future intiSharedPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // .......................................................................................................................................................................................Student Local Database Business Function..................................................................

  Future setName(String name) async {
    return await sharedPreferences!.setString("name", name);
  }

  getName() {
    return sharedPreferences!.getString("name");
  }

  Future StudentCollegeName(String clgname) async {
    return await sharedPreferences!.setString("clgname", clgname);
  }

  getCollegeName() {
    return sharedPreferences!.getString("clgname");
  }

  Future setStudentInstitution(String institution) async {
    return await sharedPreferences!.setString("institution", institution);
  }

  getStudentInstitution() {
    return sharedPreferences!.getString("institution");
  }

  Future setImageStudent(String imagelinkStudent) async {
    return await sharedPreferences!
        .setString("imglinkStudent", imagelinkStudent);
  }

  getImageStudent() {
    return sharedPreferences!.getString("imglinkStudent");
  }

  Future setClassStudent(String clas) async {
    return await sharedPreferences!.setString("class", clas);
  }

  getClassStudent() {
    return sharedPreferences!.getString("class");
  }

  Future setEmail(String email) async {
    return await sharedPreferences!.setString("Email", email);
  }

  getEmail() {
    return sharedPreferences!.getString("Email");
  }

  Future setGender(String gender) async {
    return await sharedPreferences!.setString("Gender", gender);
  }

  getGender() {
    return sharedPreferences!.getString("Gender");
  }

  Future setReligion(String religion) async {
    return await sharedPreferences!.setString("Religion", religion);
  }

  getReligion() {
    return sharedPreferences!.getString("Religion");
  }

  Future setNumber(String num) async {
    return await sharedPreferences!.setString("Number", num);
  }

  getNumber() {
    return sharedPreferences!.getString("Number");
  }

  Future setAge(String age) async {
    return await sharedPreferences!.setString("Age", age);
  }

  getAge() {
    return sharedPreferences!.getString("Age");
  }

  Future setCity(String city) async {
    return await sharedPreferences!.setString("City", city);
  }

  getCity() {
    return sharedPreferences!.getString("City");
  }

  Future setDetailsAddress(String address) async {
    return await sharedPreferences!.setString("Address", address);
  }

  getDetailsAddress() {
    return sharedPreferences!.getString("Address");
  }

  Future setUserName(String userName) async {
    return await sharedPreferences!.setString("UserName", userName);
  }

  getUserName() {
    return sharedPreferences!.getString("UserName");
  }

  Future setScore(String score) async {
    return await sharedPreferences!.setString("Score", score);
  }

  getScore() {
    return sharedPreferences!.getString("Score");
  }

  Future setQuizScore(String quizScore) async {
    return await sharedPreferences!.setString("quizscore", quizScore);
  }

  getQuizScore() {
    return sharedPreferences!.getString("quizscore");
  }

  //.........................................................................................................................................................................................................Teacher Local Database Business Function..................................................

  Future setTeacherUserName(String teachername) async {
    return await sharedPreferences!.setString("teacherusername", teachername);
  }

  getTeacherUserName() {
    return sharedPreferences!.getString("teacherusername");
  }

  Future setUniversity(String university) async {
    return await sharedPreferences!.setString("university", university);
  }

  getUniversity() {
    return sharedPreferences!.getString("university");
  }

  Future setStudySubjectTeacher(String studySubject) async {
    return await sharedPreferences!.setString("StudySubject", studySubject);
  }

  getStudySubjectTeacher() {
    return sharedPreferences!.getString("StudySubject");
  }

  Future setTeacherEmail(String teacherEmail) async {
    return await sharedPreferences!.setString("TeacherEmail", teacherEmail);
  }

  getTeacherEmail() {
    return sharedPreferences!.getString("TeacherEmail");
  }

  Future setTeacherGender(String teacherGender) async {
    return await sharedPreferences!.setString("TeacherGender", teacherGender);
  }

  getTeacherGender() {
    return sharedPreferences!.getString("TeacherGender");
  }

  Future setTeacherReligion(String teacherReligion) async {
    return await sharedPreferences!
        .setString("TeacherReligion", teacherReligion);
  }

  getTeacherReligion() {
    return sharedPreferences!.getString("TeacherReligion");
  }

  Future setTeacherPhone(String teacherPhone) async {
    return await sharedPreferences!.setString("TeacherPhone", teacherPhone);
  }

  getTeacherPhone() {
    return sharedPreferences!.getString("TeacherPhone");
  }

  Future setTeacherAge(String teacherAge) async {
    return await sharedPreferences!.setString("TeacherAge", teacherAge);
  }

  getTeacherAge() {
    return sharedPreferences!.getString("TeacherAge");
  }

  Future setTeacherTeachingSubjects(String teacherTeachingSubjects) async {
    return await sharedPreferences!
        .setString("TeacherTeachingSubjects", teacherTeachingSubjects);
  }

  getTeacherTeachingSubjects() {
    return sharedPreferences!.getString("TeacherTeachingSubjects");
  }

  Future setTeacherExperience(String teacherExperience) async {
    return await sharedPreferences!
        .setString("TeacherExperience", teacherExperience);
  }

  getTeacherExperience() {
    return sharedPreferences!.getString("TeacherExperience");
  }

  Future setTeacherTargetStudents(String teacherTargetStudents) async {
    return await sharedPreferences!
        .setString("TeacherTargetStudents", teacherTargetStudents);
  }

  getTeacherTargetSTudents() {
    return sharedPreferences!.getString("TeacherTargetStudents");
  }

  Future setTeacherTeachingDays(String teacherTeachingDays) async {
    return await sharedPreferences!
        .setString("TeacherTeachingDays", teacherTeachingDays);
  }

  getTeacherTeachingDays() {
    return sharedPreferences!.getString("TeacherTeachingDays");
  }

  Future setTeacherName(String teacherName) async {
    return await sharedPreferences!.setString("TeacherName", teacherName);
  }

  getTeacherName() {
    return sharedPreferences!.getString("TeacherName");
  }

  Future setTeacherAskingSalary(String teacherAskingSlary) async {
    return await sharedPreferences!
        .setString("AskingSalary", teacherAskingSlary);
  }

  getTeacherAskingSalary() {
    return sharedPreferences!.getString("AskingSalary");
  }

  Future setTeacherTeachingAreas(String teacherTeachingAreas) async {
    return await sharedPreferences!
        .setString("TeachingAreas", teacherTeachingAreas);
  }

  getTeacherTeachingAreas() {
    return sharedPreferences!.getString("TeachingAreas");
  }

  Future setTeacherteachingyear(String teachingyear) async {
    return await sharedPreferences!.setString("Teaching year", teachingyear);
  }

  getTeacherteachingyear() {
    return sharedPreferences!.getString("Teaching year");
  }

  Future setTeachertpressentadress(String tpressentadress) async {
    return await sharedPreferences!
        .setString("tpressentadress", tpressentadress);
  }

  getTeachertpressentadress() {
    return sharedPreferences!.getString("tpressentadress");
  }

  Future setTeachertparmanentadresss(String tparmanentadress) async {
    return await sharedPreferences!
        .setString("tparmanentadress", tparmanentadress);
  }

  getTeachertparmanentadress() {
    return sharedPreferences!.getString("tparmanentadress");
  }

  Future setTeacherCity(String teacherCity) async {
    return await sharedPreferences!.setString("TeacherCity", teacherCity);
  }

  getTeacherCity() {
    return sharedPreferences!.getString("TeacherCity");
  }

  Future setTeacherTeachingCity(String teacherTeachingCity) async {
    return await sharedPreferences!
        .setString("TeacherTeachingCity", teacherTeachingCity);
  }

  getTeacherTeachingCity() {
    return sharedPreferences!.getString("TeacherTeachingCity");
  }

  Future setCoachingReview(String coachingReview) async {
    return await sharedPreferences!.setString("coachingReview", coachingReview);
  }

  getCoachingReview() {
    return sharedPreferences!.getString("coachingReview");
  }

  Future setCoachingStar(String coachingReviewStar) async {
    return await sharedPreferences!
        .setString("coachingReviewStar", coachingReviewStar);
  }

  getCoachingStar() {
    return sharedPreferences!.getString("coachingReviewStar");
  }

  Future setGetTutoraFeedback(String tutorafeedback) async {
    return await sharedPreferences!.setString("tutoraFeddback", tutorafeedback);
  }

  getTutoraFeedback() {
    return sharedPreferences!.getString("tutoraFeedback");
  }

  Future setTutionId(String tutionid) async {
    return await sharedPreferences!.setString("tutionId", tutionid);
  }

  getTutionId() {
    return sharedPreferences!.getString("tutionId");
  }
}
