import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/view/screens/JobDetails/job_Details.dart';

import '../../CustomItems/CustomButton.dart';
import '../../CustomItems/Custom_Card/Custom_Card.dart';
import '../../CustomItems/custom_icons.dart';
import 'Apply Done.dart';

class ApplyJob extends StatelessWidget {
   ApplyJob({Key? key}) : super(key: key);
  final _controller = PageController();
   final TextEditingController nameController = TextEditingController();
   final TextEditingController emailController = TextEditingController();
   final TextEditingController phoneController = TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int numPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Spacer(flex: 3,),
                      const Text("Apply Job",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                      const Spacer(flex: 4,),

                    ],
                  ),
                  const SizedBox(height: 40,),
                  const Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.done),
                            radius: 23,
                          ),
                          Text("Biodata"),
                        ],
                      ),
                      Spacer(),
                      Text("-----"),
                      Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Center(child: Text("2")),
                              radius: 22,
                            ),
                          ),
                          Text("Type of work"),
                        ],
                      ),
                      Spacer(),
                      Text("-----"),
                      Spacer(),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Center(child: Text("3")),
                              radius: 22,
                            ),
                          ),
                          Text("Upload portfolio"),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 32,),
                  SizedBox(
                      height:500 ,
                      width: MediaQuery.of(context).size.width,
                      child: PageView(
                        // physics: const NeverScrollableScrollPhysics(),
                        controller: _controller,
                        onPageChanged: (value) {
                            numPage = value;
                        },
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bio data",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                                )),
                                Text("Fill in your bio data correctly"),
                                SizedBox(height: 28,),
                                Text("Full Name*"),
                                SizedBox(height: 8,),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.length < 5) {
                                      return "it should more than 5 letters or numbers ";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      hintText: "name",
                                      prefixIcon: const Icon(Icons.person_2_outlined),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                ),
                                SizedBox(height: 28,),
                                Text("Email*"),
                                SizedBox(height: 8,),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.length < 5) {
                                      return "it should more than 5 letters or numbers ";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      hintText: "email",
                                      prefixIcon: const Icon(Icons.email_outlined),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                ),
                                SizedBox(height: 28,),
                                Text("No.Handphone*"),
                                SizedBox(height: 8,),
                                TextFormField(

                                  validator: (value) {
                                    if (value!.length < 5) {
                                      return "it should more than 5 letters or numbers ";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      hintText: "Phone Number",
                                      prefixIcon: const Icon(Icons.outlined_flag),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )),
                                ),

                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Type of work",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              )),
                              Text("Fill in your bio data correctly"),
                              SizedBox(height: 28,),

                                SizedBox(
                                  height: 430,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) => SizedBox(height: 20,),
                                      itemBuilder:  (context, index) => Container(
                                        height: 81,
                                        width: 327,
                                        color: Colors.grey,),
                                    itemCount: 4,
                                  ),
                                )


                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Upload portfolio",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              )),
                              Text("Fill in your bio data correctly"),
                              SizedBox(height: 28,),
                              Text("Upload CV*"),
                              SizedBox(height: 12,),
                              Container(
                                height:74 ,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Image.asset("lib/images/file.png"),
                                      SizedBox(width: 10,),
                                      Column(children: [
                                        Text("Rafif Dian.CV"),
                                        Text("CV.pdf 300KB"),
                                      ],),
                                      Spacer(),
                                      IconButton(onPressed: (){}, icon: Icon(CustomIcons.edit_2,color: Colors.blue,)),
                                      IconButton(onPressed: (){}, icon: Icon(CustomIcons.close_circle,color: Colors.red,)),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text("Other File"),
                              SizedBox(height: 12,),
                              DottedBorder(
                                color:Colors.blue ,
                                radius: Radius.circular(8),
                                borderType: BorderType.RRect,
                                dashPattern: [5],
                                child: Container(
                                  width:MediaQuery.of(context).size.width ,
                                  height: 221,
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF2FF),
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:Color(0xffD6E4FF) ,
                                          child: Image.asset("lib/images/Vector.png"),
                                        ),
                                        Spacer(),
                                        Text("Upload your other file"),
                                        Spacer(),
                                        Text("Max. file size 10 MB"),
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 295,
                                          decoration:BoxDecoration(
                                            color:Color(0xffD6E4FF),
                                            borderRadius: BorderRadius.circular(100),
                                            border: Border.all(color: Colors.blue)
                                          ) ,
                                          child: TextButton(
                                              onPressed: (){}, child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(CustomIcons.export_icon),
                                              Text("Add file"),
                                            ],
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )



                            ],
                          )

                        ],
                      ))

                ],
              ),
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: CustomButton(
                    text: "Next",
                    fun: (){
                      if(numPage!=2){
                        if (formKey.currentState!.validate()){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>const ApplyDone() ,));
                        }
                      }
                      else{
                        _controller.nextPage(
                          duration: const Duration(seconds: 1), curve: Curves.linear);}
                      
                    },
                    buttoncolor: Colors.blue,
                    textcolor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
