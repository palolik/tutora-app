// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YoutubePlayVideo extends StatefulWidget {
//   const YoutubePlayVideo({Key? key}) : super(key: key);

//   // @override
//   State<YoutubePlayVideo> createState() => _YoutubePlayVideoState();
// }

// YoutubePlayerController _controller = YoutubePlayerController(
//   initialVideoId: 'iLnmTe5Q2Qw',
//   flags: YoutubePlayerFlags(
//     autoPlay: true,
//     mute: true,
//   ),
// );

// class _YoutubePlayVideoState extends State<YoutubePlayVideo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         progressColors: ProgressBarColors(
//           playedColor: Colors.amber,
//           handleColor: Colors.amberAccent,
//         ),
//       ),
//     );
//   }
// }
