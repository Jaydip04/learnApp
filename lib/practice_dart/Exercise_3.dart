void main(){
  List<int> a = [1,2,3,4,5,6,7,8,9];
  for(var i in a){
    if(i  < 5){
      print(i);
    }
  }
  print([for(var i in a) if (i < 7) i]);
}