import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';

class CarImageSection extends StatelessWidget {
  const CarImageSection({super.key, required this.homeCarListModel, required this.index});
  final HomeCarListModel homeCarListModel;
  final int index;

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
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(homeCarListModel.cars![index].image![0]))),
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
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                homeCarListModel.cars![index].image![1]))),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                homeCarListModel.cars![index].image![2]))),
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
