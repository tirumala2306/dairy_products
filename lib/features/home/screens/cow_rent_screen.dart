import 'package:flutter/material.dart';
import 'package:dairy_products/widgets/custom_app_bar.dart';
import 'package:dairy_products/core/constants/asset_constants.dart';

class CowRentDetailScreen extends StatelessWidget {
  const CowRentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          /// Custom App Bar
          CustomAppBar(isHome: false, title: "Cow Rent"),

          /// Page Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order summary",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(height: 12),

                  /// Cow Image Card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: Image.asset(AssetConstants.cowIcon, height: 180),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Order Details
                  _detailsGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _detailsGrid() {
    return Column(
      children: [
        _detailRow(
          "Order Id",
          "#7569229657",
          "Delivered On",
          "28 Dec 2025, 7:46AM",
        ),
        _detailRow("Person Name", "Tony stark", "Contact Number", "1234567890"),
        _detailRow(
          "Order Type",
          "Cow rent",
          "Delivery Instructions",
          "Don't Ring the bell.",
        ),
        _detailRow("Date", "1/1/2026", "Time", "6:00 AM - 8:00 AM"),
        _detailRow("House Type", "Individual", "Cow Type", "White"),
        _detailRow(
          "Payment Method",
          "UPI Payment",
          "Transaction Id",
          "1234567890",
        ),
        _detailRow("Floor", "04", "Total Amount", "390/-"),
        _detailRow(
          "Shipping Address",
          "Gachibowli, Hyderabad",
          "Billing Address",
          "Gachibowli, Hyderabad",
        ),
      ],
    );
  }

  Widget _detailRow(String t1, String v1, String t2, String v2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: _detailItem(t1, v1)),
          Expanded(child: _detailItem(t2, v2)),
        ],
      ),
    );
  }

  Widget _detailItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
