import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_app/modal/music_modal.dart';

class MusicProvider with ChangeNotifier {
  List<MusicModal> l1 = [];
  AssetsAudioPlayer audioplayer = AssetsAudioPlayer();
  bool isPlay= false;

  void playpause()
  {
    isPlay = !isPlay;
  }

  void changemusic() {
    audioplayer.open(
        Playlist(audios: [
          Audio.network(
              "https://pagalfree.com/musics/128-Tilasmi Bahein - Heeramandi 128 Kbps.mp3"),
        ]),
        autoStart: false);
    notifyListeners();
  }
}
