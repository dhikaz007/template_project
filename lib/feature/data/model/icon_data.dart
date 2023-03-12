// Membuat Class List Icon
import 'package:flutter/material.dart';
import 'package:tugas_alta_mobile_app/feature/ui/splash/splash_page.dart';

import '../../ui/contact/contact_page.dart';
import '../../ui/gallery/gallery_page.dart';

class ListIcon {
  // Inisialisasi parameter
  final String namaIcon;
  final IconData icon;
  final Widget? widget;

  const ListIcon({required this.namaIcon, required this.icon, this.widget});
}

// List Icon dalam bentuk Map
final List<ListIcon> iconsList = [
  const ListIcon(namaIcon: 'Telepon', icon: Icons.phone),
  const ListIcon(namaIcon: 'Pesan', icon: Icons.message),
  const ListIcon(namaIcon: 'Pengaturan', icon: Icons.settings),
  const ListIcon(namaIcon: 'Peramban Web', icon: Icons.open_in_browser),
  const ListIcon(namaIcon: 'Kalender', icon: Icons.calendar_today),
  const ListIcon(namaIcon: 'Pemutar Musik', icon: Icons.library_music),
  const ListIcon(namaIcon: 'Pemutar Video', icon: Icons.video_library),
  const ListIcon(
      namaIcon: 'Kontak', icon: Icons.contacts, widget: ContactPage()),
  const ListIcon(
      namaIcon: 'Galeri Foto',
      icon: Icons.photo_library,
      widget: GalleryPage()),
  const ListIcon(namaIcon: 'Kamera', icon: Icons.camera),
];

menuNavigate(BuildContext context, int index) {
  if (iconsList[index].widget == null) {
    final route = MaterialPageRoute(builder: (context) => const SplashPage());
    Navigator.of(context).pushReplacement(route);
  } else {
    goTo(context, iconsList[index].widget!);
  }
}

goTo(BuildContext context, Widget widget) {
  final route = MaterialPageRoute(builder: (context) => widget);
  Navigator.of(context).push(route);
}
