import 'package:home_haven/core/utils/app_assets.dart';
import 'package:home_haven/features/home/model/product_model.dart';

class HomeRepository {
  List<ProductModel> getProduct() => [
    const ProductModel(
      title: 'EKERÖ',
      image: AppAssets.furnitureImage1,
      description:
          'A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.',
      price: 230.00,
      discountPrice: 156.00,
      discountPercent: '45',
      rating: 4.9,
      ratingCount: 261,
      colors: 'Yellow',
    ),
    const ProductModel(
      title: 'KLIPPAN Sofa',
      image: AppAssets.furnitureImage2,
      description:
          'Compact 2-seat sofa with washable covers. Perfect for small spaces with a modern touch.',
      price: 550.00,
      discountPrice: 420.00,
      discountPercent: '25',
      rating: 4.6,
      ratingCount: 512,
      colors: 'Gray',
    ),
    const ProductModel(
      title: 'LACK Coffee Table',
      image: AppAssets.furnitureImage3,
      description:
          'Simple and lightweight coffee table that pairs well with any sofa and décor.',
      price: 80.00,
      discountPrice: 65.00,
      discountPercent: '20',
      rating: 4.2,
      ratingCount: 189,
      colors: 'White',
    ),
    const ProductModel(
      title: 'POÄNG Armchair',
      image: AppAssets.furnitureImage1,
      description:
          'Iconic armchair with a bentwood frame and a cushion that follows your body’s movements.',
      price: 299.00,
      discountPrice: 249.00,
      discountPercent: '17',
      rating: 4.8,
      ratingCount: 987,
      colors: 'Black',
    ),
    const ProductModel(
      title: 'HEMNES Bed Frame',
      image: AppAssets.furnitureImage2,
      description:
          'Classic solid wood bed frame with timeless design. Durable and strong for long-term use.',
      price: 700.00,
      discountPrice: 590.00,
      discountPercent: '15',
      rating: 4.7,
      ratingCount: 340,
      colors: 'Brown',
    ),
    const ProductModel(
      title: 'BILLY Bookcase',
      image: AppAssets.furnitureImage3,
      description:
          'A versatile and adjustable bookcase, perfect for organizing books and decorations.',
      price: 150.00,
      discountPrice: 120.00,
      discountPercent: '20',
      rating: 4.5,
      ratingCount: 775,
      colors: 'White',
    ),
    const ProductModel(
      title: 'MALM Dresser',
      image: AppAssets.furnitureImage3,
      description:
          'Spacious drawers with smooth-running functions, designed with a clean modern look.',
      price: 320.00,
      discountPrice: 280.00,
      discountPercent: '12',
      rating: 4.6,
      ratingCount: 423,
      colors: 'Oak',
    ),
    const ProductModel(
      title: 'RANARP Floor Lamp',
      image: AppAssets.furnitureImage2,
      description:
          'Vintage-inspired floor lamp with adjustable head for directed light.',
      price: 90.00,
      discountPrice: 75.00,
      discountPercent: '16',
      rating: 4.4,
      ratingCount: 150,
      colors: 'Black/White',
    ),
  ];
}
