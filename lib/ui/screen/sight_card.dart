import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, widget, imageChunkEvent) {
                        if (imageChunkEvent == null) {
                          return widget;
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                      // при возникновении ошибки
                      // вместо изображения будет текст Error!
                      errorBuilder: (context, obj, stacktrace) =>
                      const Center(child: Text("Ошибка!")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sight.type,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset(
                          'res/icons/heart.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sight.name,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(59, 62, 91, 1),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      sight.details,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(124, 126, 146, 1),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
