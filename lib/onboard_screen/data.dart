class SliderModel{
  String? imageAssetPath;
  String? title;
  String? desc;

  SliderModel({this.imageAssetPath,this.desc,this.title});

  void setImageAssetPath(String getImageAssetPath){
  imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }
  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageassetPath(){
    return imageAssetPath!;
  }

  String getTitle(){
    return title!;
  }

  String getDesc(){
    return desc!;
  }

}

List<SliderModel> getSlides(){

  List<SliderModel> slides =  <SliderModel>[];
  SliderModel sliderModel =  SliderModel();

  //1
  sliderModel.setDesc("Ensure you communicate clearly, correctly \nand make a positive impression on others without being self-conscious.");
  sliderModel.setTitle("Improvement in your communication skills is now Accessible and Efficient!");
  sliderModel.setImageAssetPath("assets/onb1.png");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  //2
  sliderModel.setDesc("Take control of your notifications \nand never miss a beat when it comes to the words you want to track in real-time.");
  sliderModel.setTitle("Effortlessly improve your communication skills with our Proven method!");
  sliderModel.setImageAssetPath("assets/onb2.png");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  //3
  sliderModel.setDesc("Here's your chance to break the habit \n of repeating the same word or using swear words over and over again.");
  sliderModel.setTitle("Put an end to the habit of overusing specific words and \nHate Speech!");
  sliderModel.setImageAssetPath("assets/onb3.png");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  return slides;
}


