import 'package:fimex/app/app.dart';
import 'package:fimex/app/ui/navigation/routes.dart';
import 'package:fimex/app/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class LikesTab extends StatelessWidget {
  const LikesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10.0).copyWith(bottom: 20.0),
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
      itemBuilder: (context, index) {
        return BigProductCard(
          onPressed: () => routemaster.push(AppRoutes.profileLikeProduct),
        );
      },
    );
  }
}
