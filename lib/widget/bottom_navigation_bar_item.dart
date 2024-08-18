import 'package:flutter/material.dart';

BottomNavigationBarItem buildBottomNavigationBarItem(
    IconData icon, bool isSelected) {
  return BottomNavigationBarItem(
    icon: Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(icon),
        ), // L'icône principale
        if (isSelected) // Le petit point est affiché uniquement si l'icône est sélectionnée
          Positioned(
            bottom: 0, // Positionnement du point sous l'icône
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.orange, // Couleur du point
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    ),
    label: '',
  );
}
