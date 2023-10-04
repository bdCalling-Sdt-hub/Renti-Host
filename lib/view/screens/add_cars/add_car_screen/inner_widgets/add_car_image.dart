import 'package:flutter/material.dart';


class AddCarImage extends StatelessWidget {
  const AddCarImage(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("http://lovelyfotos.l.o.pic.centerblog.net/o/98a8ed98.jpg"))),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "http://lovelyfotos.l.o.pic.centerblog.net/o/98a8ed98.jpg"))),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("http://lovelyfotos.l.o.pic.centerblog.net/o/98a8ed98.jpg"))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
