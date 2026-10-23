import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';

abstract final class AudioUtils {
  static List<int> generateSamplePcmWavBytes({
    int sampleRate = 16000,
    double durationSeconds = 1.5,
    double frequencyHz = 400.0,
  }) {
    final numSamples = (sampleRate * durationSeconds).toInt();
    final dataSize = numSamples * 2; // 16-bit = 2 bytes per sample
    final chunkSize = 36 + dataSize;

    final bytes = <int>[
      // "RIFF"
      0x52, 0x49, 0x46, 0x46,
      // Chunk size (little-endian)
      chunkSize & 0xFF,
      (chunkSize >> 8) & 0xFF,
      (chunkSize >> 16) & 0xFF,
      (chunkSize >> 24) & 0xFF,
      // "WAVE"
      0x57, 0x41, 0x56, 0x45,
      // "fmt "
      0x66, 0x6d, 0x74, 0x20,
      // Subchunk1 size (16 for PCM)
      0x10, 0x00, 0x00, 0x00,
      // Audio format (1 = PCM)
      0x01, 0x00,
      // Num channels (1 = Mono)
      0x01, 0x00,
      // Sample rate (e.g. 16000 Hz)
      sampleRate & 0xFF,
      (sampleRate >> 8) & 0xFF,
      (sampleRate >> 16) & 0xFF,
      (sampleRate >> 24) & 0xFF,
      // Byte rate (sampleRate * numChannels * bitsPerSample / 8 = 32000)
      (sampleRate * 2) & 0xFF,
      ((sampleRate * 2) >> 8) & 0xFF,
      ((sampleRate * 2) >> 16) & 0xFF,
      ((sampleRate * 2) >> 24) & 0xFF,
      // Block align (numChannels * bitsPerSample / 8 = 2 bytes)
      0x02, 0x00,
      // Bits per sample (16)
      0x10, 0x00,
      // "data"
      0x64, 0x61, 0x74, 0x61,
      // Subchunk2 data size (little-endian)
      dataSize & 0xFF,
      (dataSize >> 8) & 0xFF,
      (dataSize >> 16) & 0xFF,
      (dataSize >> 24) & 0xFF,
    ];

    // Generate gentle audio waveform with attack/decay envelope
    for (var i = 0; i < numSamples; i++) {
      final t = i / sampleRate;
      final envelope = (i < 800)
          ? (i / 800.0)
          : (i > numSamples - 800 ? (numSamples - i) / 800.0 : 1.0);
      final sample = (sin(2 * pi * frequencyHz * t) * 8000 * envelope).toInt();
      final clamped = sample.clamp(-32768, 32767);
      bytes
        ..add(clamped & 0xFF)
        ..add((clamped >> 8) & 0xFF);
    }

    return bytes;
  }

  /// Create a temporary sample WAV audio file on the device filesystem.
  static Future<File> createTemporarySampleWavFile({
    String fileName = 'pronunciation_sample.wav',
  }) async {
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/$fileName');
    final bytes = generateSamplePcmWavBytes();
    return file.writeAsBytes(bytes);
  }
}
