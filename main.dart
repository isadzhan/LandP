import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AllInOne UI Kit'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Верхняя часть с кнопками
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(
                      Icons.phone_iphone, "Default Theme", Colors.teal),
                  _buildGridItem(Icons.apps, "Full Apps", Colors.deepPurple),
                  _buildGridItem(Icons.public, "Integration", Colors.green),
                  _buildGridItem(Icons.dashboard, "Dashboard", Colors.orange),
                ],
              ),
            ),
            // Темы
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _buildThemeItem(
                    context,
                    Icons.folder,
                    "File Manager",
                    "Theme 1 Screens",
                    Colors.orange,
                  ),
                  _buildThemeItem(
                    context,
                    Icons.fitness_center,
                    "Exercise Tips",
                    "Theme 2 Screens",
                    Colors.green,
                  ),
                  _buildThemeItem(
                    context,
                    Icons.fastfood,
                    "Food Recipe",
                    "Theme 3 Screens",
                    Colors.blue,
                  ),
                  _buildThemeItem(
                    context,
                    Icons.sports_gymnastics,
                    "Gym",
                    "Theme 4 Screens",
                    Colors.teal,
                  ),
                  _buildThemeItem(
                    context,
                    Icons.account_balance_wallet,
                    "e-wallet",
                    "Theme 5 Screens",
                    Colors.deepOrange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Виджет для карточек GridView
  Widget _buildGridItem(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }

  // Виджет для списка тем
  Widget _buildThemeItem(BuildContext context, IconData icon, String title,
      String subtitle, Color color) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: 30),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, color: color),
        onTap: () {
          // Добавьте действие при нажатии
          print("Tapped on $title");
        },
      ),
    );
  }
}
