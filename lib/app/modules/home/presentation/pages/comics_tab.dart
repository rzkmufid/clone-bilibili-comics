import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComicsTab extends StatefulWidget {
  const ComicsTab({super.key});

  @override
  State<ComicsTab> createState() => _ComicsTabState();
}

class _ComicsTabState extends State<ComicsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rocommended for you',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'More',
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.black38),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: const Row(
              children: [
                _GenreSelected(genreName: 'Romance'),
                SizedBox(width: 10),
                _GenreSelected(genreName: 'Actions'),
                SizedBox(width: 10),
                _GenreSelected(genreName: 'Harem'),
                SizedBox(width: 10),
                _GenreSelected(genreName: 'Adventure')
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 220,
            ),
            delegate: SliverChildListDelegate.fixed(
              [
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
                _CardComics(
                  urlImage:
                      'https://i0.hdslb.com/bfs/comic-static/4f2e082086d38708397cb4563cf9efb656c06c2b.png@1920w_1080h.webp',
                  comicName: 'Salad Days Days Salad ',
                  penulisComic: 'BL',
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _CardComics extends StatelessWidget {
  final String urlImage;
  final String comicName;
  final String penulisComic;
  const _CardComics({
    required this.urlImage,
    required this.comicName,
    required this.penulisComic,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage(
              placeholder: const AssetImage(
                'assets/images/common/placeholder/comic_placeholder_default.png',
              ),
              image: NetworkImage(urlImage),
              fit: BoxFit.fill,
            ),
            Text(comicName,
                style: GoogleFonts.poppins(fontSize: 14, height: 1.3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(penulisComic, style: GoogleFonts.poppins(fontSize: 11)),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: PopupMenuButton(
                    tooltip: 'More',
                    offset: const Offset(-100, 0),
                    iconSize: 11,
                    icon: const Icon(
                      Icons.more_vert, // Icon yang akan diatur ukurannya
                      size: 11.0, // Ukuran ikon
                      color: Colors.black, // Warna ikon
                    ),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem(
                        height: 30,
                        value: 'item1',
                        child: Text(
                          'Item 1',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _GenreSelected extends StatelessWidget {
  final String genreName;
  const _GenreSelected({
    super.key,
    required this.genreName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          genreName,
          style: TextStyle(color: Colors.blue.shade600, fontSize: 12),
        ),
      ),
    );
  }
}
