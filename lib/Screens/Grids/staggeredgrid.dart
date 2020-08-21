import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';



class StaggeredGridPage extends StatefulWidget {
  @override
  _StaggeredGridPageState createState() => _StaggeredGridPageState();
}

class _StaggeredGridPageState extends State<StaggeredGridPage> {
  List<String> imageList = [
    'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
    'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
    'https://homepages.cae.wisc.edu/~ece533/images/boat.png',
    'https://homepages.cae.wisc.edu/~ece533/images/fruits.png',
    'https://homepages.cae.wisc.edu/~ece533/images/watch.png',
    'https://homepages.cae.wisc.edu/~ece533/images/pool.png',
    'https://i.picsum.photos/id/635/200/300.jpg?hmac=qG6LgnhiwwsL9zn9xA9KffocQAHkej2ueth9FHJl2pc',
    'https://i.picsum.photos/id/1042/200/300.jpg?hmac=rLBArBa4ahYhaKOp1GOxw6W77_v5daNsouqdh_bkoUs',
    'https://i.picsum.photos/id/57/200/300.jpg?hmac=l908G1qVr4r7dP947-tak2mY8Vvic_vEYzCXUCKKskY',
    'https://i.picsum.photos/id/127/200/300.jpg?hmac=H0aErkmw8FxF1Tp7uFj4cV-aVMxDDjOVKTwGwS6REXw',
    'https://i.picsum.photos/id/846/200/300.jpg?hmac=56qbTJ7KrbbWoe5OYb__qtZZt0ydzvJU0sFHaEsDUS0',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: new StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return new StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}

