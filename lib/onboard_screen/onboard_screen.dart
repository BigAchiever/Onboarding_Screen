import 'package:flutter/material.dart';
import 'package:online/home.dart';
import 'package:online/onboard_screen/data.dart';
import 'package:sizer/sizer.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
   List<SliderModel> mySlides = <SliderModel>[];
  PageController? controller;
  int selectIndex = 0;

  @override
  void initState() {
    mySlides = getSlides();
    controller = PageController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height -100,
        child: PageView(
          controller: controller,
          onPageChanged: (index){
           setState(() {
             selectIndex = index;
           });
          },
          children: <Widget>[
            SlideTile(
              index: 0,
              imagePath: mySlides[0].getImageassetPath(),
              title: mySlides[0].getTitle(),
              desc: mySlides[0].desc,
            ),
            SlideTile(
              index: 1,
              imagePath: mySlides[1].getImageassetPath(),
              title: mySlides[1].getTitle(),
              desc: mySlides[1].desc,
            ),
            SlideTile(
              index: 2,
              imagePath: mySlides[2].getImageassetPath(),
              title: mySlides[2].getTitle(),
              desc: mySlides[2].desc,
            ),

          ],
        ),
      ),
      bottomSheet: selectIndex != 2 ? Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 12),
        child: Container(
          height: 8.5.h,
          width: 100.w,

          //The small curved box
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(45),
              //background shadow
              // boxShadow: const [
              //   BoxShadow(spreadRadius: 2,color: Color(0xffffffff),offset: Offset(3, 3),blurRadius: 15)
              // ]
          ),
          margin:  EdgeInsets.only(bottom: 6.h),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3B6EE9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
            ),
            onPressed: (){
              // if (kDebugMode) {
                print("this is slideIndex: $selectIndex");
              // }
              controller!.animateToPage(selectIndex + 1, duration: const Duration(milliseconds: 200), curve: Curves.linear);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  Image.asset('assets/next.png',height: 5.h,),
                ],
              ),
            ),
          ),
        ),

      //  Get started wala box hai yaha sey
      ):Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 15),
        child: Container(
          height: 8.5.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: const Color(0xff3B6EE9),
              borderRadius: BorderRadius.circular(45),
              // boxShadow: const [
              //   BoxShadow(spreadRadius: 2,color: Color(0xff3B6EE9),offset: Offset(3, 3),blurRadius: 15)
              // ]
          ),

          // Third page get strated box part
          margin:  EdgeInsets.only(bottom: 5.6.h),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3B6EE9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Home()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  Image.asset('assets/next.png',height: 5.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String? imagePath, title, desc;
  int? index;


  SlideTile({Key? key, this.imagePath, this.title, this.desc,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            height: 48.5.h,
            width: 100.w,
            decoration: BoxDecoration(
              // color: Colors.black,
              // boxShadow:  [
              //   BoxShadow(color:Colors.grey.shade100,spreadRadius: 0,offset: const Offset(3, 3))
              // ],
              borderRadius: BorderRadius.circular(38),
              // image: DecorationImage(
              //   image: AssetImage(imagePath!,),fit: BoxFit.cover,
              // )
            ),
            child:Column(
              children: [
                SizedBox(height: 8.h,),
                Image.asset(imagePath!,height:index==0? 40.h:35.h,),
              ],
            )
            ,),
          SizedBox(
            height: 3.4.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(title!, textAlign: TextAlign.center,style:  const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Colors.white,
            ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(desc!, textAlign: TextAlign.center,style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.greenAccent,
            ),),
          )
        ],
      ),
    );
  }
}

