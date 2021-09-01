import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image(image: AssetImage('assets/images/demo1.jpg'), width: 50.0),
      FadeInImage.assetNetwork(
        placeholder: 'assets/images/demo1.jpg',
        width: 50.0,
        image:
            'https://exp-picture.cdn.bcebos.com/586bfdefe07814311d52c2d9dc6699cf0353627e.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_500%2Climit_1%2Fformat%2Cf_jpg%2Fquality%2Cq_80',
      ),
      Image.network(
          'https://exp-picture.cdn.bcebos.com/586bfdefe07814311d52c2d9dc6699cf0353627e.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_500%2Climit_1%2Fformat%2Cf_jpg%2Fquality%2Cq_80',
          width: 50.0),
      Image(
          image: NetworkImage(
              'https://exp-picture.cdn.bcebos.com/586bfdefe07814311d52c2d9dc6699cf0353627e.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_500%2Climit_1%2Fformat%2Cf_jpg%2Fquality%2Cq_80'),
          width: 50.0),
      Image.asset(
        'assets/images/demo1.jpg',
        width: 100,
        height: 100,
        repeat: ImageRepeat.repeat,
      ),
      Icon(Icons.music_note, size: 32.0, color: Colors.amber)
    ]);
  }
}
