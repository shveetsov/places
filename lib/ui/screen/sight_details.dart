import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  //color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(10),
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
              Positioned(
                left: 16,
                top: 36,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 32,
                    height: 32,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'res/icons/arrow.svg',
                      color: const Color.fromRGBO(37, 40, 73, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(59, 62, 91, 1),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      sight.type,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(59, 62, 91, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'круглосуточно',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(124, 126, 146, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  sight.details,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(59, 62, 91, 1),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(76, 175, 80, 1),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'res/icons/go.svg',
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                        height: 48,
                      ),
                      const Text(
                        'ПОСТРОИТЬ МАРШРУТ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Divider(
                  height: 0.8,
                  color: Color.fromRGBO(124, 126, 146, 0.56),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 255, 255, 0),
                        ),
                        shadowColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 255, 255, 0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // Change your radius here
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'res/icons/calendar.svg',
                            color: const Color.fromRGBO(124, 126, 146, 0.56),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 40,
                          ),
                          const Text(
                            'Запланировать',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(124, 126, 146, 0.56),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 255, 255, 0),
                        ),
                        shadowColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 255, 255, 0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // Change your radius here
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'res/icons/heart.svg',
                            color: const Color.fromRGBO(59, 62, 91, 1),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 40,
                          ),
                          const Text(
                            'Запланировать',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(59, 62, 91, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
