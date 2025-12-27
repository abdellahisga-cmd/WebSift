import 'package:flutter/material.dart';

void main() => runApp(AnimeApp());

class AnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // ثيم غامق ليناسب تطبيقات الأنمي
      home: AnimeDetailsPage(),
    );
  }
}

class AnimeDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة الأنمي (البوستر)
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://link-to-your-image.com/poster.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان والتقييم
                  Text("اسم الأنمي: One Piece", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(" 9.1 / 10", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 16),
                  // التصنيفات
                  Wrap(
                    spacing: 8,
                    children: [
                      Chip(label: Text("شونين")),
                      Chip(label: Text("مغامرات")),
                      Chip(label: Text("دراما")),
                    ],
                  ),
                  SizedBox(height: 16),
                  // الوصف
                  Text("الوصف:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    "هنا يوضع وصف الأنمي بالتفصيل... مغامرات لوفي وطاقمه للبحث عن الكنز الأسطوري.",
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                  SizedBox(height: 20),
                  // أزرار السيرفرات
                  Text("اختر السيرفر:", style: TextStyle(fontSize: 18)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("سيرفر 1")),
                      ElevatedButton(onPressed: () {}, child: Text("سيرفر 2")),
                      ElevatedButton(onPressed: () {}, child: Text("سيرفر 3")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
