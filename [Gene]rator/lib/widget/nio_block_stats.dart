import 'package:flutter/material.dart';
import 'nio_proficiency.dart';
import 'nio_stats.dart';

class NioBlockStats extends StatefulWidget {
  const NioBlockStats({Key? key}) : super(key: key);

  @override
  State<NioBlockStats> createState() => _NioBlockStatsState();
}

class _NioBlockStatsState extends State<NioBlockStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 540,
      // width: 605,
      color: Colors.grey[900],
      child: Expanded(
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
                Row(
                  children: const [
                    NioStats(),
                    NioProficiecy(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
