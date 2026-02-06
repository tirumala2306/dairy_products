import 'package:flutter/material.dart';
import 'package:dairy_products/core/navigations/app_routes.dart';

class RecentOrdersWidget extends StatelessWidget {
  const RecentOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [_header(), _ordersList(context)]);
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Recent Orders",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text("View all"),
              SizedBox(width: 4),
              Icon(Icons.arrow_forward, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ordersList(BuildContext context) {
    final orders = [
      {"id": "#75692", "type": "Cow", "amount": "2500", "status": "Progress"},
      {
        "id": "#75692",
        "type": "Product",
        "amount": "2500",
        "status": "Delivered",
      },
      {
        "id": "#75692",
        "type": "Product",
        "amount": "2500",
        "status": "Cancelled",
      },
      {
        "id": "#75692",
        "type": "Product",
        "amount": "2500",
        "status": "Cancelled",
      },
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: orders.length,
      separatorBuilder: (_, _) => const Divider(),
      itemBuilder: (_, i) {
        final order = orders[i];
        return _orderRow(context, order);
      },
    );
  }

  Widget _orderRow(BuildContext context, Map<String, String> order) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(order["id"]!),
          Text(order["type"]!),
          Text(order["amount"]!),

          /// CLICKABLE STATUS CHIP
          GestureDetector(
            onTap: () {
              if (order["status"] == "Progress") {
                Navigator.pushNamed(context, AppRoutes.cowRentDetail);
              }
            },
            child: _statusChip(order["status"]!),
          ),

          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }

  Widget _statusChip(String status) {
    Color color;

    switch (status) {
      case "Delivered":
        color = Colors.teal;
        break;
      case "Cancelled":
        color = Colors.red;
        break;
      default:
        color = Colors.orange;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Text(status, style: TextStyle(color: color, fontSize: 12)),
    );
  }
}
