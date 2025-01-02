import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:foodapp/components/my_receipt.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  @override
  void initState() {
    super.initState();

    String receipt = context.read<Restaurant>().displayCartReceipt();
    saveOrderToDatabase(receipt);
  }

  Future<void> saveOrderToDatabase(String receipt) async {
    final url = Uri.parse('http://10.0.2.2:5000/save_receipt'); // Python backend URL

    final payload = jsonEncode({'receipt': receipt});

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: payload,
      );

      if (response.statusCode == 200) {
        print('Receipt saved successfully!');
      } else {
        print('Failed to save receipt. ${response.body}');
      }
    } catch (e) {
      print('Error saving receipt: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Delivery in progress.."),
          backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // Custom Bottom Nav Bar - Message / Call delivery driver
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
        height: 100,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          ),
        ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // profile pic of driver
          Container(
            decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(width: 20),

          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Driver. John", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "johndriver@gmail.com",
                style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const Spacer(),

          // message button
          Row(
            children: [
              Container(
                decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const SizedBox(width: 10),

          // call button
          Container(
            decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
