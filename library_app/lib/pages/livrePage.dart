import 'package:flutter/material.dart';


class LivrePage extends StatelessWidget {
  final List<Map<String, dynamic>> LivreParCategorie = [
    {
      "categorie": "Romans",
      "livres": [
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
      ]
    },
    {
      "categorie": "Manga",
      "livres": [
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
      ]
    },
    {
      "categorie": "Poesie",
      "livres": [
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
      ]
    },
    {
      "categorie": "Manga",
      "livres": [
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
        {"image": "assets/images/img.png", "title": "Livre 1", "author": "Auteur 1", "isbn": "1234567890"},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title:Align(
          alignment: Alignment.centerLeft,
          child: Text("Tous les livres", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Barre de recherche
            TextField(
              decoration: InputDecoration(
                hintText: "Rechercher un livre",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Liste des catégories de livres
            Expanded(
              child: ListView.builder(
                itemCount: LivreParCategorie.length,
                itemBuilder: (context, index) {
                  final categorie = LivreParCategorie[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categorie["categorie"],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      // Affichage en grille
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: categorie["livres"].length,
                        itemBuilder: (context, livreIndex) {
                          final livre = categorie["livres"][livreIndex];
                          return Column(
                            children: [
                              GestureDetector(
                              onTap: () {
                            // Action pour afficher les détails du livre
                                Navigator.pushNamed(
                                  context, "/livredetails"
                                );
                          },
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                          livre["image"]!,
                          fit: BoxFit.cover,
                          ),
                          ),
                          ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 20),

                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Barre de navigation en bas
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ajouter"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user_icon.png")),
              label: ""),
        ],
      ),
    );
  }
}
