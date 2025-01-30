import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController =
      TextEditingController();
  final TextEditingController weightController =
      TextEditingController();
  int age = 0;
  num feet = 0;
  num totalInch = 0;
  num inch = 0;
  num height = 0;
  num weight = 0;
  num result = 0;
  String bmiResult = "";
  String bmiImageResult = "";
  String isSelectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff88cfc7),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: "FontMain"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Stack(
                children: [
                  Center(
                      child: Image.asset(
                    "assets/images/heart.png",
                    fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  )),
                  Positioned(
                    top:100 ,
                    left: 120,
                    child:  Text(
                result.toStringAsFixed(2),
                style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
              ),)
                ],
              ),
            Text(
                 bmiResult != "" ?  bmiResult : "Normal",
                style: TextStyle(
                    color: getColor(),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                        height: 10,
                      ),
                     bmiImageResult != "" ? Image.asset(
                       bmiImageResult,
                        fit: BoxFit.cover,
                        // color: Colors.pink,
                        height: 50,
                        width: 50,
                      ): Container(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Male",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "FontMain"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          selectGender("Male");
                        },
                        child: Image.asset(
                          "assets/images/male_icon.png",
                          fit: BoxFit.cover,
                          color:  isSelectedGender == "Male" ? Colors.blue : Colors.grey,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Female",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "FontMain"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          selectGender("Female");
                        },
                        child: Image.asset(
                          "assets/images/female_icon.png",
                          fit: BoxFit.cover,
                          color: isSelectedGender == "Female" ? Colors.pink : Colors.grey,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              color: Color.fromARGB(255, 177, 189, 194),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: "FontMain"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 70,
                            height: 50,
                            child: TextField(
                              controller: ageController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allow only numbers
                              ],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight
                                      .w600), // Customize text style if needed
                              decoration: InputDecoration(
                                border: OutlineInputBorder(), // Remove underline
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      indent: 30,
                      endIndent: 10,
                      width: 10,
                      thickness: 0.5,
                      color: Color.fromARGB(255, 177, 189, 194),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              color: Color.fromARGB(255, 177, 189, 194),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: "FontMain"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 70,
                            height: 50,
                            child: TextField(
                              controller: heightController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allow only numbers
                              ],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight
                                      .w600), // Customize text style if needed
                              decoration: InputDecoration(
                                border: OutlineInputBorder(), // Remove underline
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      indent: 30,
                      endIndent: 10,
                      width: 10,
                      thickness: 0.5,
                      color: Color.fromARGB(255, 177, 189, 194),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              color: Color.fromARGB(255, 177, 189, 194),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: "FontMain"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 70,
                            height: 50,
                            child: TextField(
                              controller: weightController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Allow only numbers
                              ],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight
                                      .w600), // Customize text style if needed
                              decoration: InputDecoration(
                                border: OutlineInputBorder(), // Remove underline
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]),
      ),
      bottomNavigationBar: GestureDetector(
        onTap:(){
        CalculateBMI();
        },
        child: Container(
          height: 60,
          color: Color(0xff88cfc7),
          child: Center(
            child: Text(
              "Calculate BMI",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: "FontMain"),
            ),
          ),
        ),
      ),
    );
  }

  void CalculateBMI() {
    if (ageController.text.isNotEmpty &&
        heightController.text.isNotEmpty &&
        weightController.text.isNotEmpty) {
      age = int.parse(ageController.text.toString());
      feet = int.parse(heightController.text.toString());
      totalInch = ((feet * 12) + inch).toInt();
      double meter = totalInch * 2.54 / 100;
      height = meter;
      // height = (feet * 12 + inch) * 2.54 / 100;
      weight = double.parse(weightController.text.toString());
      result = weight / (height * height);
      if (result >= 18 && result <= 25) {
        bmiResult = 'Healthy';
        bmiImageResult = "assets/images/healthy.png";
      } else if (result <= 18) {
        bmiResult ='UnderWeight';
        bmiImageResult = "assets/images/diet.png";
      } else {
        bmiResult = 'OverWeight';
        bmiImageResult = "assets/images/obesity.png";
      }

      print('$result');
      setState(() {});
    } else {
      print("Please Enter the all Mandatory Fields");
      return;
    }
  }

  Color getColor(){
    if(bmiResult == "Healthy"){
      return Colors.green;
    }else if(bmiResult == "UnderWeight"){
     return Colors.blue;
  }else if(bmiResult == "OverWeight"){
    return Colors.red;
  }else{
    return Color.fromARGB(255, 152, 108, 12);
  }
  }

  void selectGender(String gender){
     setState(() {
       isSelectedGender = gender;
     });
  }
}
