import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/Custom_job.dart';
import 'package:jobsque/screens/JobDetails/job_Details.dart';
import '../../../CustomItems/custom_icons.dart';
import 'HomeNavigationBar/HomeNavigationBar.dart';

class SearchScreen extends StatefulWidget {
   SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller =TextEditingController();

List searchHistory=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:24 ,right: 24,top: 40),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>HomeNavigationBar() ,));
                    },
                        icon: const Icon(Icons.arrow_back,color: Colors.black,)),
                    const Spacer(flex: 1,),
                    SizedBox(width: 290,
                      child: TextFormField(
                        onFieldSubmitted: (value) {
                          setState(() {
                            searchHistory.add(value);
                            print(value);
                          });
                        },
                        controller:_controller ,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CustomIcons.search_normal),
                          hintText: "Search....",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: Color(0xffE5E7EB),
                child:const Padding(
                  padding: EdgeInsets.only(right:24 ,left: 24,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
                ),
              SizedBox(
                height: searchHistory.length.toDouble()*60,
                child: ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                        onTap: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24,left: 24),
                          child: Row(children: [
                            Text(searchHistory[index]),
                            Spacer(),
                            IconButton(onPressed: (){
                              setState(() {
                                searchHistory.removeAt(0);
                              });
                            }, icon: Icon(CustomIcons.close_circle))
                          ],),
                        )),
                    separatorBuilder: (context, index) => Column(
                      children: [
                        SizedBox(height: 2,),
                        Divider(height: 10,color: Colors.grey,)
                      ],
                    ),
                    itemCount: searchHistory.length),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: Color(0xffE5E7EB),
                child:Padding(
                  padding: const EdgeInsets.only(right:24 ,left: 24,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
              ),
              SizedBox(
                height: searchHistory.length.toDouble()*100,
                child: ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>JobDetails(index: index)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24,left: 24),
                          child: CustomJob(index: index),
                        )),
                    separatorBuilder: (context, index) => Column(
                      children: [
                        SizedBox(height: 2,),
                        Divider(height: 10,color: Colors.grey,)
                      ],
                    ),
                    itemCount: searchHistory.length),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
