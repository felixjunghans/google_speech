/// The encoding of the audio data sent in the request.
///
/// All encodings support only 1 channel (mono) audio,
/// unless the audioChannelCount and enableSeparateRecognitionPerChannel
/// fields are set.
///
/// For best results, the audio source should be captured and transmitted
/// using a lossless encoding (FLAC or LINEAR16).
/// The accuracy of the speech recognition can be reduced if lossy codecs are
/// used to capture or transmit audio, particularly if background noise
/// is present. Lossy codecs include MULAW, AMR, AMR_WB, OGG_OPUS,
/// SPEEX_WITH_HEADER_BYTE, and MP3.
///
/// The FLAC and WAV audio file formats include a header that describes the
/// included audio content. You can request recognition for WAV files that
/// contain either LINEAR16 or MULAW encoded audio. If you send FLAC or WAV
/// audio file format in your request, you do not need to specify an
/// AudioEncoding; the audio encoding format is determined from the
/// file header. If you specify an AudioEncoding when you send send
/// FLAC or WAV audio, the encoding configuration must match the encoding
/// described in the audio header; otherwise the request returns
/// an google.rpc.Code.INVALID_ARGUMENT error code.
enum AudioEncoding {
  /// Not specified.
  ENCODING_UNSPECIFIED,

  /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
  LINEAR16,

  /// FLAC (Free Lossless Audio Codec) is the recommended encoding because it
  /// is lossless--therefore recognition is not compromised--and requires only
  /// about half the bandwidth of LINEAR16.
  ///
  /// FLAC stream encoding supports 16-bit and 24-bit samples, however,
  /// not all fields in STREAMINFO are supported.
  FLAC,

  /// 8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.
  MULAW,

  /// Adaptive Multi-Rate Narrowband codec. [sampleRateHertz] must be 8000.
  AMR,

  /// Adaptive Multi-Rate Wideband codec. [sampleRateHertz] must be 16000.
  AMR_WB,

  /// Opus encoded audio frames in Ogg container (OggOpus).
  /// [sampleRateHertz] must be one of 8000, 12000, 16000, 24000, or 48000.
  OGG_OPUS,

  /// Although the use of lossy encodings is not recommended, if a very
  /// low bitrate encoding is required, OGG_OPUS is highly preferred over
  /// Speex encoding. The Speex encoding supported by Cloud Speech API has a
  /// header byte in each block, as in MIME type audio/x-speex-with-header-byte.
  /// It is a variant of the RTP Speex encoding defined in RFC 5574. The stream is
  /// a sequence of blocks, one block per RTP packet. Each block starts with a
  /// byte containing the length of the block, in bytes, followed by one or more
  /// frames of Speex data, padded to an integral number of bytes (octets) as
  /// specified in RFC 5574. In other words, each RTP header is
  /// replaced with a single byte containing the block length.
  /// Only Speex wideband is supported. [sampleRateHertz] must be 16000.
  SPEEX_WITH_HEADER_BYTE,
}

/// Which model to select for the given request. Select the model best suited
/// to your domain to get best results. If a model is not explicitly specified,
/// then we auto-select a model based on the parameters in the RecognitionConfig.
enum RecognitionModel {
  /// Best for short queries such as voice commands or voice search.
  command_and_search,

  /// Best for audio that originated from a phone call (
  /// typically recorded at an 8khz sampling rate).
  phone_call,

  /// Best for audio that originated from from video or includes multiple
  /// speakers. Ideally the audio is recorded at a 16khz or greater sampling
  /// rate. This is a premium model that costs more than the standard rate.
  video,

  /// Best for audio that is not one of the specific audio models.
  /// For example, long-form audio. Ideally the audio is high-fidelity,
  /// recorded at a 16khz or greater sampling rate.
  basic,
}
