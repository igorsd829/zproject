import 'package:flutter/material.dart';

import '../widgets/card_page_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'assets/imagens/FTnvX2fXoAE4aHH.jpeg',
    'assets/imagens/20201125_053518.jpg',
    'assets/imagens/20220327_091322_HDR.jpg',
    'assets/imagens/20200906_074714_Burst02.jpg',
    'assets/imagens/20220305_031514.jpg',
    'assets/imagens/IMG_20160913_190000.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'News',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Chip(
                        backgroundColor: Color(0XFF161515),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        label: Text(
                          'Sport',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 950,
              width: double.infinity,
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return PageNews(
                    title:
                        'QUEM É A VITÓRIA RÉGIA DO THE MASKED SINGER BRASIL? Saiba identidade da Vitória Régia do The Masked Singer Brasil 2023; veja quem é',
                    subtitle:
                        'This is a game which will see absolute European royalty take each other on. Two clubs created to play at this stage. What are your predictions?',
                    image: images[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
