import 'package:bankwallet/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/profile.png"),
                  ),
                  title: Text(
                    "Hello",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  subtitle: Text(
                    "Fermin Lopez",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.search,
                    size: 24.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Card(
                  color: Colors.blueAccent,
                  margin: EdgeInsets.all(1.r),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            Image.asset(
                              "assets/mastercard.png",
                              width: 40.w,
                              height: 24.h,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.euro,
                              color: Colors.white,
                              size: 24.sp,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              "10,500",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          "****  ****  ****  2314",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18.sp,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fermin Lopez",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text("Exp Date\n 16/26",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text("Services",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),),
                SizedBox(height: 12.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 60.w,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6.r)
                              ),
                              child: Icon(Icons.wallet,
                              size: 50.sp,
                                color: Colors.white,
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                            },
                          ),
                          SizedBox(height: 10.h,),
                          Text("Wallet",style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          ),
                        ],
                      ),
                      SizedBox(width: 31.w,),
                      Column(
                        children: [
                          Container(
                            height: 60.w,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(6.r)
                            ),
                            child: Icon(Icons.transfer_within_a_station,
                              size: 50.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Transfer",style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          ),
                        ],
                      ),
                      SizedBox(width: 31.w,),
                      Column(
                        children: [
                          Container(
                            height: 60.w,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(6.r)
                            ),
                            child: Icon(Icons.paypal,
                              size: 50.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Pay",style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          ),
                        ],
                      ),
                      SizedBox(width: 31.w,),
                      Column(
                        children: [
                          Container(
                            height: 60.w,
                            width: 60.w,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6.r)
                            ),
                            child: Icon(Icons.add,
                              size: 50.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Topup",style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h,),
                Text("Recent Transactions",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
                SizedBox(height: 12.h,),
                Card(
                  margin: EdgeInsets.all(1),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50.w,
                          width: 50.w,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6.r)
                          ),
                          child: Icon(Icons.check_circle,
                            size: 50.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dribble",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold)),
                            SizedBox(height: 2.h,),
                            Text("Payment Received",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold))
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.euro,color: Colors.red,),
                        Text("550",style: TextStyle(color: Colors.red,fontSize: 15.sp),),

                      ],
                    )
                  ),
                ),
                SizedBox(height: 12.h,),
                Card(
                  margin: EdgeInsets.all(1),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50.w,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6.r)
                            ),
                            child: Icon(Icons.wallet,
                              size: 50.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Google Wallet",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold)),
                              SizedBox(height: 2.h,),
                              Text("Payment via Vault can be done",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold))
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.euro,color: Colors.green,),
                          Text("445",style: TextStyle(color: Colors.green,fontSize: 15.sp),),

                        ],
                      )
                  ),
                ),
                SizedBox(height: 12.h,),
                Card(
                  margin: EdgeInsets.all(1),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50.w,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(6.r)
                            ),
                            child: Icon(Icons.check_box,
                              size: 50.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Uplabs",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold)),
                              SizedBox(height: 2.h,),
                              Text("Payment received",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold))
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.euro,color: Colors.purple,),
                          Text("445",style: TextStyle(color: Colors.purple,fontSize: 15.sp),),

                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
