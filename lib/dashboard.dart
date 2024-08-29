import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<PieChartSectionData> data=[
    PieChartSectionData(title: "50%",value: 50,radius: 70.r,color: Colors.indigo),
    PieChartSectionData(title: "36%",value: 36,radius: 70.r,color: Colors.blue),
    PieChartSectionData(title: "14",value: 14,radius: 70.r,color: Colors.red)
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(9.r),
            child: Icon(Icons.filter_alt),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(9.r),
        child: Column(
          children: [
            Center(
              child: Card(
               child:   Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                       height: 200.w,
                       width: 400.w,
                       child: PieChart(PieChartData(
                         sections: data,
                         centerSpaceRadius: 20.r,

                       )),
                     ),
                     Text("\$ 248.57",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp),),
                     Text("Available Balance",style: TextStyle(fontSize: 25.sp,color: Colors.grey),),
                     Row(
                       children: [
                         Padding(
                           padding:  EdgeInsets.only(left: 8.r),
                           child: Column(
                             children: [
                               Text("Earning",style: TextStyle(fontSize: 20.sp,color: Colors.grey),),
                               Text("\$600",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.indigo),),
                             ],
                           ),
                         ),
                        Spacer(),
                         Column(
                           children: [
                             Text("Spend",style: TextStyle(fontSize: 20.sp,color: Colors.grey),),
                             Text("\$250",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.blue),),
                           ],
                         ),
                         Spacer(),
                         Padding(
                           padding: EdgeInsets.only(right:8.r),
                           child: Column(
                             children: [
                               Text("Available",style: TextStyle(fontSize: 20.sp,color: Colors.grey),),
                               Text("\$1000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: Colors.red),),
                             ],
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
              ),
            ),
            Text("Transactions",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
          ],
        ),
      )
    );
  }
}

