import 'package:delivery_morenope/models/cart_model.dart';
import 'package:flutter/material.dart';

class ObservationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ExpansionTile(
        title: Text(
          'Observações do pedido',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey[700]
          ),
        ),
        leading: Icon(Icons.list),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Digite as observações',
                hintMaxLines: 6
              ),
              initialValue: '',
              onFieldSubmitted: (text){
                CartModel.of(context).setObservation(text);
              },
            ),
          )
        ],
      ),
    );
  }
}