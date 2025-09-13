import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() {
  runApp(const MyApp());
}

class MenuItem {
  final String name;
  final double price;
  MenuItem(this.name, this.price);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MenuScreen());
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<MenuItem> menu = [
    MenuItem("برجر لحم", 80),
    MenuItem("برجر دجاج", 70),
    MenuItem("بيتزا", 120),
    MenuItem("بيبسي", 20),
    MenuItem("مياه", 10),
  ];

  final Map<MenuItem, int> cart = {};

  double get total =>
      cart.entries.fold(0, (sum, item) => sum + (item.key.price * item.value));

  void _printReceipt() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text("مطعم XYZ", style: pw.TextStyle(fontSize: 24)),
            pw.SizedBox(height: 20),
            pw.Text("فاتورة الطلب:", style: pw.TextStyle(fontSize: 18)),
            pw.Divider(),
            ...cart.entries.map(
              (e) => pw.Text(
                "${e.value}x ${e.key.name} - ${e.key.price * e.value} جنيه",
              ),
            ),
            pw.Divider(),
            pw.Text("الإجمالي: $total جنيه", style: pw.TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("نظام كاشير مطعم")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menu.length,
              itemBuilder: (context, index) {
                final item = menu[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text("${item.price} جنيه"),
                  trailing: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        cart[item] = (cart[item] ?? 0) + 1;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الإجمالي: $total جنيه",
                  style: const TextStyle(fontSize: 18),
                ),
                ElevatedButton.icon(
                  onPressed: cart.isEmpty ? null : _printReceipt,
                  icon: const Icon(Icons.print),
                  label: const Text("طباعة فاتورة"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
