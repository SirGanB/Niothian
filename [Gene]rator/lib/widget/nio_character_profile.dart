import 'package:flutter/material.dart';
import 'package:niothian/widget/nano/frm_text.dart';

class NioCharacterProfile extends StatefulWidget {
  const NioCharacterProfile({Key? key}) : super(key: key);

  @override
  State<NioCharacterProfile> createState() => _NioCharacterProfile();
}

class _NioCharacterProfile extends State<NioCharacterProfile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        color: Colors.indigo,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: 40,
              child: TextField(
                maxLength: 20,
                textAlign: TextAlign.center,
                style: TextStyle(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  counterText: '',
                  labelText: 'Nome do Personagem',
                ),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: SizedBox(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      'img/characterImage.jpg',
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(children: [
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  counterText: '',
                                  labelText: 'Antecedente',
                                ),
                                maxLength: 15,
                                style: TextStyle(),
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextForm(titulo: "nome")
                          ]),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          child: Column(children: const [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  counterText: '',
                                  labelText: 'Classe & Nivel',
                                ),
                                maxLength: 15,
                                style: TextStyle(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  counterText: '',
                                  labelText: 'Tendência',
                                ),
                                maxLength: 15,
                                style: TextStyle(),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
          const Divider(),
          SizedBox(
            child: Row(children: [
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'HP',
                      prefixIcon: const Icon(Icons.heart_broken, size: 15),
                    ),
                    maxLength: 4,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'THP',
                      prefixIcon: const Icon(Icons.health_and_safety, size: 15),
                    ),
                    maxLength: 4,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'MP',
                      prefixIcon: const Icon(Icons.star, size: 15),
                    ),
                    maxLength: 2,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'CA',
                      prefixIcon: const Icon(Icons.shield, size: 15),
                    ),
                    maxLength: 2,
                    maxLines: 1,
                    style: const TextStyle(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ]),
          ),
          const SizedBox(height: 8),
        ]),
      ),
    );
  }
}
