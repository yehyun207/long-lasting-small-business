import 'package:flutter/material.dart';
import '../../data/models/induty_model.dart';

class HdstInduty extends StatefulWidget {
  final List<IndutyModel> items;
  const HdstInduty({super.key, required this.items});

  @override
  State<HdstInduty> createState() => _HdstIndutyState();
}

class _HdstIndutyState extends State<HdstInduty> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[0].ic}'
                  ),
                ),
                Text(
                  widget.items[0].indutyNm,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[1].ic}'
                  ),
                ),
                Text(
                  widget.items[1].indutyNm,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[2].ic}'
                  ),
                ),
                Text(
                  widget.items[2].indutyNm,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[3].ic}'
                  ),
                ),
                Text(
                  '${widget.items[3].indutyNm}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[4].ic}'
                  ),
                ),
                Text(
                  '${widget.items[4].indutyNm}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[5].ic}'
                  ),
                ),
                Text(
                  widget.items[5].indutyNm,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[6].ic}'
                  ),
                ),
                Text(
                  '${widget.items[6].indutyNm}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.network(
                      'http://172.28.2.84:8081${widget.items[7].ic}'
                  ),
                ),
                Text(
                  widget.items[7].indutyNm,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
