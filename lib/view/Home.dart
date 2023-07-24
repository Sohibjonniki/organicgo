import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tas/view/InfoPage.dart';

import '../cubit/users/state_user.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff171725),
                toolbarHeight: 250,
                title: Column(
                  children: [
                    Text(
                      "UserCubit",
                      style: TextStyle(fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bandung, Cimahi",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 20,
                        ),
                      ],
                    ),

                    //textform fild boshlandi
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: const Color(0xff1D2335),
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Color(0xff92929D),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Color(0xff92929D),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                    ),
                    //bu yerda yashil qator
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Icon(Icons.account_balance_wallet,
                              color: Colors.green, size: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 85),
                            child: Column(
                              children: [
                                Text(
                                  "You have 3 coupon",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "Let’s use this coupon",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff92929D),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xff92929D),
                          )
                        ],
                      ),
                    ),
                    //yashil qator tugadi

                    //2 ta soz boshlandi

                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "Choose Category",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff92929D),
                            ),
                          )
                        ],
                      ),
                    ),

                    //2 ta soz tugadi
                  ],
                ),
              ),
              body: Builder(builder: (context) {
                if (state is UserLoadingState) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (state is UserErrorState) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                }

                //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

                else if (state is UserCompleteState) {
                  return Container(
                    decoration: BoxDecoration(color:Color(0xff171725)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 75,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://winetime.com.ua/uploads/public/goods/3656/1585225128_63618_502_378.webp"),
                                          fit: BoxFit.fill),
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Container(
                                    height: 75,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Lmpt56VZ8TLXG7MC8xOaPEeXOYziQXmXKQ&usqp=CAU"),
                                            fit: BoxFit.fill),
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  ),
                                ),
                                Container(
                                  height: 75,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7PIMOQJL22E4mprYBGg0A6wjzYTkCfFdeiw&usqp=CAU"),
                                          fit: BoxFit.fill),
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Container(
                                    height: 75,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://uzreport.news/fotobank/image/15356bd95bd9b2935a7a0f115eb4cbde.jpeg"),
                                            fit: BoxFit.fill),
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  ),
                                ),
                                Container(
                                  height: 75,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://dostavo4ka.uz/upload-file/2021/05/05/5919/750x750-932eb989-adad-4623-b913-c58fdb892aa8.jpg"),
                                          fit: BoxFit.fill),
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 10),
                                  child: Container(
                                    height: 75,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://xs.uz/upload/post/2020/06/04/b2d987447039c1c713d9f559e6a88ff80604.jpg"),
                                            fit: BoxFit.fill),
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                         Padding(
                      padding: const EdgeInsets.only(top: 15,left: 30,bottom: 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              "Best Selling",
                              style: TextStyle(fontSize: 18,color: Colors.white),
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff92929D),
                            ),
                          )
                        ],
                      ),
                    ),
                  
                        //qator tugadi
                  
                  //Text(state.users[index].albumId.toString()),
                  
                        Row(
                          children: [
                            SizedBox(
                              width: 350,
                              height: 210,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: InkWell(
                                      onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context) =>InfoPage(info: state.users.allData[index]) )),
                                      child: Container(
                                        width: 170,
                                        height: 130,
                                        decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),color: Colors.white),
                                         child: Column(children: [
                                                      Image(image: NetworkImage(state.users.allData[index].img),width: 100,fit: BoxFit.fill,),
                                                      Text(state.users.allData[index].title),
                                                      Row(
                                                        
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 45,right: 15),
                                                            child: Text(state.users.allData[index].price),
                                                          ),
                                                          Icon(Icons.add_box,size: 35,color: Colors.green,)
                                                        ],
                                                      ),
                                                                      
                                                                      
                                                                      
                                                      
                                                                      
                                                    ],),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: state.users.allData.length,
                              ),
                            )
                          ],
                        ),
                  
                        // SizedBox(
                        //   height: 100,
                        //   child: ListView.builder(
                        //     scrollDirection: Axis.horizontal,
                        //     itemBuilder: (context, index) {
                        //       return ListTile(
                        //         title:Image(image: NetworkImage(state.users.fruits[index].img.toString()),)
                        //       //     title: Image(
                        //       //   image: NetworkImage(
                        //       //       state.users[index].albumId.toString()),
                        //       // )
                        //       );
                        //     },
                        //     itemCount: state.users.fruits.length,
                        //   ),
                        // ),
                      ],
                    ),
                  );
                }

                //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                else {
                  return const SizedBox.shrink();
                }
              }),
            ));
  }
}
