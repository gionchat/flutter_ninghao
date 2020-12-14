
class LogUtils{

  static void i(String TAG,dynamic log){
    assert((){
      print("jeek log $TAG $log");
      return true;
    }());
  }

}