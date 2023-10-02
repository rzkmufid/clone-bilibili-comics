import 'package:bilibili_comics/app/modules/home/presentation/pages/comics_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Jumlah tab sesuaikan dengan kebutuhan Anda
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SizedBox(
          width: 160,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black87,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            tabs: const [
              Tab(text: 'Comics'),
              Tab(text: 'Novel'),
            ],
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: const Icon(Icons.explore_outlined),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ComicsTab(),
          Center(child: Text('Konten Tab 2')),
        ],
      ),
    );
  }
}
