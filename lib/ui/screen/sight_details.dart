import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage('https://rocketsoft.pro/img-places/img-1.jpg'),
              ),
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Долина гейзеров',
                  style: TextStyle(
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
                  children: const [
                    Text(
                      'Природа',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(59, 62, 91, 1),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
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
                const Text(
                  'Долина гейзеров — одно из крупнейших гейзерных полей мира, объект Всемирного наследия ЮНЕСКО. Самая известная и при этом самая труднодоступная достопримечательность Камчатки. Чтобы попасть сюда, придется лететь на вертолете, а до поездки получить специальное разрешение, количество которых ограничено. Именно поэтому большинство туристов, ездивших на Камчатку, видели эту уникальную долину только на фото. Ну или в фильме «Земля Санникова», который снимали как раз в этих краях.',
                  style: TextStyle(
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
                    children: const [
                      Icon(Icons.map),
                      SizedBox(
                        width: 10,
                        height: 48,
                      ),
                      Text(
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
                        children: const [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Color.fromRGBO(124, 126, 146, 0.56),
                          ),
                          SizedBox(
                            width: 10,
                            height: 40,
                          ),
                          Text(
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
                        children: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromRGBO(59, 62, 91, 1),
                          ),
                          SizedBox(
                            width: 10,
                            height: 40,
                          ),
                          Text(
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
