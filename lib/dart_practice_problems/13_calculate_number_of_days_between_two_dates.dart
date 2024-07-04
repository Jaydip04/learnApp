void main(){
  var initialData = new DateTime.utc(2014, 07, 02);
  var finalData = new DateTime.utc(2014, 07, 11);
  var difference = finalData.difference(initialData);
  print(difference.inDays);
}
// Output : 9