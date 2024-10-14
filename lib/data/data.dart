import 'package:equatable/equatable.dart';

class Watch extends Equatable {
  final int id;
  final String brand;
  final String model;
  final double price;
  final String description;
  final String imageUrl;
  final bool available;
  final String mechanism;
  final String strappingMaterial;
  final String waterResistance;
  final String caseDiameter;
  final String color;

  Watch({
    required this.id,
    required this.brand,
    required this.model,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.available,
    required this.mechanism,
    required this.strappingMaterial,
    required this.waterResistance,
    required this.caseDiameter,
    required this.color,
  });
  
  @override
  List<Object?> get props => [id];
}
List<Watch> watches = [
  Watch(
    id: 1,
    brand: 'Tissot',
    model: 'T-Touch Expert Solar',
    price: 700.00,
    description: 'A versatile smartwatch with a touch-sensitive sapphire crystal and solar-powered movement.',
    imageUrl: 'assets/photos/tissot_ttouch_expert_solar.png',
    available: true,
    mechanism: 'Quartz',
    strappingMaterial: 'Rubber',
    waterResistance: '100 meters',
    caseDiameter: '45 mm',
    color: 'Black',
  ),
  Watch(
    id: 2,
    brand: 'Tissot',
    model: 'PRX Automatic',
    price: 600.00,
    description: 'A sleek and modern automatic watch with a stainless steel case and integrated bracelet.',
    imageUrl: 'assets/photos/tissot_prx_automatic.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Stainless Steel',
    waterResistance: '100 meters',
    caseDiameter: '40 mm',
    color: 'Silver',
  ),
  Watch(
    id: 3,
    brand: 'Tissot',
    model: 'Le Locle Powermatic 80',
    price: 750.00,
    description: 'A classic timepiece with a traditional design and an extended 80-hour power reserve.',
    imageUrl: 'assets/photos/tissot_le_locle_powermatic_80.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Leather',
    waterResistance: '30 meters',
    caseDiameter: '39 mm',
    color: 'Brown',
  ),
  Watch(
    id: 4,
    brand: 'Tissot',
    model: 'T-Race Chronograph',
    price: 500.00,
    description: 'Sporty chronograph with a bold design and multifunctional capabilities.',
    imageUrl: 'assets/photos/tissot_t_race_chronograph.png',
    available: false,
    mechanism: 'Quartz',
    strappingMaterial: 'Rubber',
    waterResistance: '100 meters',
    caseDiameter: '43 mm',
    color: 'Red',
  ),
  Watch( // change photo
    id: 5,
    brand: 'Tissot',
    model: 'Chemin des Tourelles',
    price: 800.00,
    description: 'Elegant watch with a refined design and Swiss automatic movement.',
    imageUrl: 'assets/photos/tissot_chemin_des_tourelles.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Leather',
    waterResistance: '50 meters',
    caseDiameter: '42 mm',
    color: 'Blue',
  ), 
  Watch( // change photo
    id: 6,
    brand: 'Omega',
    model: 'Seamaster Diver 300M',
    price: 5200.00,
    description: 'A professional dive watch with a ceramic bezel and helium escape valve.',
    imageUrl: 'assets/photos/omega_seamaster_diver_300m.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Stainless Steel',
    waterResistance: '300 meters',
    caseDiameter: '42 mm',
    color: 'Blue',
  ),
  Watch(
    id: 7,
    brand: 'Omega',
    model: 'Speedmaster Moonwatch Professional',
    price: 6500.00,
    description: 'The iconic chronograph that was part of all six moon landings.',
    imageUrl: 'assets/photos/omega_speedmaster_moonwatch_professional.png',
    available: true,
    mechanism: 'Manual',
    strappingMaterial: 'NATO',
    waterResistance: '50 meters',
    caseDiameter: '42 mm',
    color: 'Black',
  ),
  Watch(
    id: 8,
    brand: 'Omega',
    model: 'Constellation Co-Axial Master',
    price: 8100.00,
    description: 'A luxurious timepiece with a distinctive design and superior precision.',
    imageUrl: 'assets/photos/omega_constellation_coxial.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Leather',
    waterResistance: '100 meters',
    caseDiameter: '39 mm',
    color: 'Gold',
  ),
  Watch(
    id: 9,
    brand: 'Omega',
    model: 'Seamaster Aqua Terra 150M',
    price: 4800.00,
    description: 'A versatile watch that combines sporty performance with elegant design.',
    imageUrl: 'assets/photos/omega_seamaster_aqua_terra.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Leather',
    waterResistance: '150 meters',
    caseDiameter: '41 mm',
    color: 'White',
  ),
  Watch(
    id: 10,
    brand: 'Rolex',
    model: 'Daytona',
    price: 13500.00,
    description: 'A prestigious chronograph designed for motorsport enthusiasts, featuring a tachymetric scale and three sub-dials.',
    imageUrl: 'assets/photos/rolex_daytona.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Stainless Steel',
    waterResistance: '100 meters',
    caseDiameter: '40 mm',
    color: 'Silver',
  ),
  Watch(
    id: 11,
    brand: 'Rolex',
    model: 'GMT-Master II',
    price: 11500.00,
    description: 'An iconic travel watch with a dual time zone function and a distinctive two-tone bezel.',
    imageUrl: 'assets/photos/rolex_gmt_master_ii.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Stainless Steel',
    waterResistance: '100 meters',
    caseDiameter: '40 mm',
    color: 'Black and Blue',
  ),
  Watch(
    id: 12,
    brand: 'Rolex',
    model: 'Datejust',
    price: 9000.00,
    description: 'A classic timepiece known for its timeless design, fluted bezel, and date function.',
    imageUrl: 'assets/photos/rolex_datejust.png',
    available: true,
    mechanism: 'Automatic',
    strappingMaterial: 'Oystersteel',
    waterResistance: '100 meters',
    caseDiameter: '36 mm',
    color: 'Champagne',
  ),
    Watch( // change photo
      id: 14,
      brand: 'Casio',
      model: 'Pro Trek PRW-3500',
      price: 200.00,
      description: 'A multi-sensor outdoor watch with solar power, altimeter, barometer, and compass.',
      imageUrl: 'assets/photos/casio_pro_trek_prw3500.png',
      available: true,
      mechanism: 'Quartz',
      strappingMaterial: 'Resin',
      waterResistance: '200 meters',
      caseDiameter: '47 mm',
      color: 'Gray',
    ),
    Watch( // change photo
      id: 15,
      brand: 'Casio',
      model: 'Edifice EF527D-1AV',
      price: 120.00,
      description: 'A sophisticated chronograph with a slide rule bezel and stainless steel bracelet.',
      imageUrl: 'assets/photos/casio_edifice_ef527d.png',
      available: true,
      mechanism: 'Quartz',
      strappingMaterial: 'Stainless Steel',
      waterResistance: '100 meters',
      caseDiameter: '45.5 mm',
      color: 'Silver',
    ),
    Watch(
      id: 18,
      brand: 'Casio',
      model: 'Vintage A168WG-9',
      price: 60.00,
      description: 'A retro-style digital watch with a gold-tone stainless steel band and classic features.',
      imageUrl: 'assets/photos/casio_vintage_a168wg.png',
      available: true,
      mechanism: 'Quartz',
      strappingMaterial: 'Stainless Steel',
      waterResistance: '30 meters',
      caseDiameter: '36 mm',
      color: 'Gold',
    ),
];

