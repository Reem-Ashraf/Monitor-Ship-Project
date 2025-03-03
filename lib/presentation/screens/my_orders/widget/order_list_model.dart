import 'package:flutter/material.dart';
import 'package:monitor_ship_project/core/utils/constants/colors.dart';

class OrderModel {
  final String orderId;
  final String trackingNumber;
  final int quantity;
  final int subtotal;
  final String date;
  final String status;
  final Color statusColor;

  OrderModel({
    required this.orderId,
    required this.trackingNumber,
    required this.quantity,
    required this.subtotal,
    required this.date,
    required this.status,
    required this.statusColor,
  });
}

List<OrderModel> orderList = [
  OrderModel(
    orderId: "67890",
    trackingNumber: "XYZ987654",
    quantity: 1,
    subtotal: 75,
    date: "2024-02-25",
    status: "pending",
    statusColor: AppColors.orange,
  ),
  OrderModel(
    orderId: "12345",
    trackingNumber: "ABC123456",
    quantity: 2,
    subtotal: 150,
    date: "2024-02-27",
    status: "delivered",
    statusColor: AppColors.green,
  ),
  OrderModel(
    orderId: "12345",
    trackingNumber: "ABC123456",
    quantity: 2,
    subtotal: 150,
    date: "2024-02-27",
    status: "delivered",
    statusColor: AppColors.green,
  ),
  OrderModel(
    orderId: "54321",
    trackingNumber: "LMN123789",
    quantity: 3,
    subtotal: 225,
    date: "2024-02-22",
    status: "cancelled",
    statusColor: AppColors.red,
  ),
  OrderModel(
    orderId: "54321",
    trackingNumber: "LMN123789",
    quantity: 3,
    subtotal: 225,
    date: "2024-02-22",
    status: "cancelled",
    statusColor: AppColors.red,
  ),
];
