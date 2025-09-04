import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key, required this.item});
  final Item item;

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late final Player player;
  late final VideoController controller;
  bool _isInitialized = false;
  bool _hasError = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      player = Player();
      controller = VideoController(player);

      // الاستماع لحالة الفيديو
      player.stream.error.listen((error) {
        if (mounted) {
          setState(() {
            _hasError = true;
            _errorMessage = 'خطأ في تشغيل الفيديو: $error';
          });
        }
      });

      player.stream.buffering.listen((buffering) {
        if (mounted) {
          setState(() {
            _isInitialized = !buffering;
          });
        }
      });

      // إعداد الصوت
      await player.setVolume(100.0); // مستوى الصوت 100%
      await player.setAudioDevice(AudioDevice.auto()); // جهاز الصوت التلقائي

      // فتح الفيديو
      await player.open(Media(widget.item.videoUrl ?? ''));

      // تشغيل تلقائي مع التكرار
      await player.play();
      await player.setPlaylistMode(PlaylistMode.loop);
    } catch (e) {
      if (mounted) {
        setState(() {
          _hasError = true;
          _errorMessage = 'فشل في تحميل الفيديو: ${e.toString()}';
        });
      }
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void toggleVideo() {
    if (_hasError) return;
    player.playOrPause();
  }

  // دالة لتحديد أبعاد الفيديو المناسبة للجهاز
  Widget _buildVideoContainer() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // الحصول على أبعاد الشاشة
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        // نسبة عرض إلى ارتفاع للفيديو (9:16 للريلز العمودية)
        const videoAspectRatio = 9.0 / 16.0;

        // حساب الأبعاد المثلى
        double videoWidth, videoHeight;

        if (screenWidth / screenHeight > videoAspectRatio) {
          // الشاشة أعرض من نسبة الفيديو (مثل التابلت في الوضع الأفقي)
          videoHeight = screenHeight;
          videoWidth = videoHeight * videoAspectRatio;
        } else {
          // الشاشة أطول من نسبة الفيديو أو مناسبة
          videoWidth = screenWidth;
          videoHeight = videoWidth / videoAspectRatio;

          // التأكد من أن الارتفاع لا يتجاوز ارتفاع الشاشة
          if (videoHeight > screenHeight) {
            videoHeight = screenHeight;
            videoWidth = videoHeight * videoAspectRatio;
          }
        }

        return Center(
          child: SizedBox(
            width: videoWidth,
            height: videoHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0), // زوايا دائرية اختيارية
              child: Video(
                controller: controller,
                controls: NoVideoControls,
                fit: BoxFit.cover,
                fill: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                _errorMessage,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _hasError = false;
                    _isInitialized = false;
                  });
                  player.dispose();
                  _initializePlayer();
                },
                child: const Text('إعادة المحاولة'),
              ),
            ],
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: toggleVideo,
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: _isInitialized
            ? _buildVideoContainer()
            : const Center(
                child: CupertinoActivityIndicator(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
