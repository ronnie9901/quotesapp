
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';
import '../utils/globalcategories.dart';
import 'dart:ui' as ui;
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
class shere extends StatefulWidget {
  const shere(
      {
        super.key,
      required this.quote,
      required this.author,
      required this.img
      }
      );

  final String quote, author, img;

  @override
  State<shere> createState() => _shereState();
}
class _shereState extends State<shere> {
  GlobalKey imgkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              RepaintBoundary(
                key: imgkey,
                child: Container(
                  height: 714.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: c1,
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: SelectableText(
                              widget.quote,
                              style: GoogleFonts.getFont(font,
                                  color: c1, fontSize: 20),
                            ),
                            subtitle: SelectableText(widget.author,
                                style: GoogleFonts.getFont(font,
                                    color: c1, fontSize: 20)),
                          ),

                        ],
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 20),
                child: InkWell(onTap: () {
                  Navigator.of(context).pop();
                },child: Icon(CupertinoIcons.back,size: 30,color: c1,)),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () async {
                RenderRepaintBoundary bondary = imgkey
                    .currentContext!
                    .findRenderObject()
                as RenderRepaintBoundary;

                ui.Image image = await bondary.toImage();
                ByteData? byteData =
                await image.toByteData(
                    format: ui.ImageByteFormat.png);

                Uint8List img =
                byteData!.buffer.asUint8List();
                ImageGallerySaver.saveImage(img);
              },
              icon: Icon(
                Icons.save,
                color:c1,
              )),
          IconButton(
              onPressed: () async {
                //
                RenderRepaintBoundary bondary = imgkey
                    .currentContext!
                    .findRenderObject()
                as RenderRepaintBoundary;

                ui.Image image = await bondary.toImage();
                ByteData? byteData =
                await image.toByteData(
                    format: ui.ImageByteFormat.png);

                Uint8List img =
                byteData!.buffer.asUint8List();

                final dir =
                await getApplicationDocumentsDirectory();

                final file = File('${dir.path}/img.png');
                file.createSync(recursive: true);
                file.writeAsBytes(img);

                await ShareExtend.share(
                    file.path, "image");
              },
              icon: Icon(
                Icons.share,
                color: c1,
              )),
          IconButton(onPressed:() async {
            RenderRepaintBoundary bondary = imgkey
                .currentContext!
                .findRenderObject()
            as RenderRepaintBoundary;

            ui.Image image = await bondary.toImage();
            ByteData? byteData =
                await image.toByteData(
                format: ui.ImageByteFormat.png);

            Uint8List img =
            byteData!.buffer.asUint8List();

            final dir =
                await getApplicationDocumentsDirectory();

            final file = File('${dir.path}/img.png');
            file.createSync(recursive: true);
            file.writeAsBytes(img);

            await ShareExtend.share(
                file.path, "image");
            int location = WallpaperManager.BOTH_SCREEN; //can be Home/Lock Screen
            bool result = await WallpaperManager.setWallpaperFromFile(file.path, location);
          },  icon: Icon(Icons.wallpaper,color: c1,))
        ],
      ),
    );
  }
}
