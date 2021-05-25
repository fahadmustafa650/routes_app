import 'package:flutter/material.dart';
import 'Screens/payment_section_screen.dart';
import 'Screens/routes_today_screen.dart';
import 'Screens/update_profile_screen.dart';
import 'Screens/attendance_log_screen.dart';
import 'Screens/delivery_invoice_screen.dart';
import 'Screens/delivery_points_screen.dart';
import 'Screens/driver_verification_screen.dart';
import 'Screens/expense_manager_screen.dart';
import 'Screens/food_expense_screen.dart';
import 'Screens/labour_charges_screen.dart';
import 'Screens/order_placing_screen.dart';
import 'Screens/routes_covered_screen.dart';
import 'Screens/splash_screen.dart';
import 'Screens/start_trip_screen.dart';
import 'Screens/toll_charges_screen.dart';
import 'Screens/welcome_screen.dart';
import 'Screens/workshop_expense_screen.dart';
import 'Screens/fuel_expense_screen.dart';
import 'screens/delivery_point_details_screen.dart';
import 'screens/support_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CustomSplashScreen.id,
      routes: {
        AttendanceLogScreen.id: (context) => AttendanceLogScreen(), //
        CustomSplashScreen.id: (context) => CustomSplashScreen(), //
        DeliveryInvoiceScreen.id: (context) => DeliveryInvoiceScreen(),
        DeliveryPointDetailsScreen.id: (context) =>
            DeliveryPointDetailsScreen(), //
        DeliveryPointsScreen.id: (context) => DeliveryPointsScreen(), //
        DriverVerificationScreen.id: (context) => DriverVerificationScreen(),
        ExpenseManagerScreen.id: (context) => ExpenseManagerScreen(),
        FoodExpenseScreen.id: (context) => FoodExpenseScreen(),
        FuelExpenseScreen.id: (context) => FuelExpenseScreen(),
        LabourChargesScreen.id: (context) => LabourChargesScreen(),
        OrderPlacingScreen.id: (context) => OrderPlacingScreen(),
        PaymentSectionScreen.id: (context) => PaymentSectionScreen(),
        RoutesCoveredScreen.id: (context) => RoutesCoveredScreen(),
        RoutesTodayScreen.id: (context) => RoutesTodayScreen(),
        StartTripScreen.id: (context) => StartTripScreen(),
        SupportScreen.id: (context) => SupportScreen(),
        TollChargesScreen.id: (context) => TollChargesScreen(),
        UpdateProfileScreen.id: (context) => UpdateProfileScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        WorkshopExpenseScreen.id: (context) => WorkshopExpenseScreen(),
      },
    );
  }
}
