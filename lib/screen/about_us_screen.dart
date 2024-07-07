import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เกี่ยวกับเรา')),
      body: Container(
        child: Column(
          children: [
            Image.asset("images/wat.jpg"),
            Text('เกี่ยวกับวัดกู่เต้า'),
            Text(
                "วัดกู่เต้า จังหวัดเชียงใหม่ เป็นวัดที่ตั้งอยู่ใน ตำบลศรีภูมิ อำเภอเมือง จังหวัดเชียงใหม่ โดยน่าจะสร้าง ขึ้นในปี พ.ศ. 2156 เพื่อประดิษฐานพระอัฐิของพระเจ้านรธาเมงสอผู้ปกครองล้านนาคนแรกที่เป็นชาวพม่า")
          ],
        ),
      ),
    );
  }
}
