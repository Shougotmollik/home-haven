import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';
import 'package:home_haven/core/utils/app_assets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.2,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 38),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.profileBgImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Account",
                      style: textTheme.headlineMedium?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Transform.translate(
            offset: const Offset(0, -50),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(80),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage(AppAssets.profileImage),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Claire Cooper",
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "claire.cooper@mail.com",
                          style: textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_outlined),
                  ),
                ],
              ),
            ),
          ),

          // ✅ Options (General + Help)
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _sectionTitle("General", textTheme),
                _buildTile(Icons.receipt_long, "Transaction"),
                _buildTile(Icons.favorite_border, "Wishlist"),
                _buildTile(Icons.bookmark_border, "Saved Address"),
                _buildTile(Icons.credit_card, "Payment Methods"),
                _buildTile(Icons.notifications_none, "Notification"),
                _buildTile(Icons.lock_outline, "Security"),

                const SizedBox(height: 24),
                _sectionTitle("Help", textTheme),
                _buildTile(Icons.help_outline, "FAQ"),
                _buildTile(Icons.phone_outlined, "Contact Us"),
                _buildTile(Icons.info_outline, "About App"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black87),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
