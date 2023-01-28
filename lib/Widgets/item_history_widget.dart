import 'package:flutter/material.dart';

class ItemHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(4, 4),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          "Blok A Sarimi",
        ),
        subtitle: Text(
          "Desa Mujumundur sasdadasd pasdomab",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: Image.network(
          "https://cdn-icons-png.flaticon.com/512/741/741460.png",
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "05, Sep 2021",
            ),
            Text(
              // El backslash(\) permite imprimir signo de $
              "\$30.0",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
