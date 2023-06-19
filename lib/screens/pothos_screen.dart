import 'package:flutter/material.dart';
import 'package:practicas/models/potho_model.dart';
import 'package:practicas/providers/pothos_provider.dart';


class PothosScreen extends StatelessWidget {
  const PothosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos Unsplash'),
        elevation: 0,
      ),

      body: FutureBuilder(
        future: PothosProvider().fetchPothos(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            List<PhotoModel> items = snapshot.data!;
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Post(items[index]);
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error al obtener los datos'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      )
   );
  }
}

class Post extends StatelessWidget {
  final PhotoModel photo;

  const Post(this.photo, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Image.network(photo.urls.regular),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 60,
              color: Colors.grey.shade400.withOpacity(0.95),
              child: Row(
                children: [
                  SizedBox(width: 10),

                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(photo.user.profileImage.medium),
                  ),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(photo.user.name, overflow: TextOverflow.ellipsis,),
                      ),
                      SizedBox(height: 5,),
                      Text('@${photo.user.username}')
                    ],
                  ),

                  Spacer(),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Publicación'),
                      SizedBox(height: 5,),
                      Text(photo.createdAt.toString().substring(0, 10)),
                    ],
                  ),

                  SizedBox(width: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}