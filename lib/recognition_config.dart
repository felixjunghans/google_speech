import 'package:flutter/cupertino.dart';
import 'package:google_speech/generated/google/cloud/speech/v1/cloud_speech.pb.dart'
    as _cs;

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

class RecognitionConfig {
  /// Encoding of audio data sent in all RecognitionAudio messages.
  /// This field is optional for FLAC and WAV audio files and required for all
  /// other audio formats. For details, see [AudioEncoding].
  final AudioEncoding encoding;

  /// Sample rate in Hertz of the audio data sent in all RecognitionAudio
  /// messages. Valid values are: 8000-48000. 16000 is optimal. For best
  /// results, set the sampling rate of the audio source to 16000 Hz.
  /// If that's not possible, use the native sample rate of the audio source
  /// (instead of re-sampling). This field is optional for FLAC and WAV audio
  /// files, but is required for all other audio formats.
  /// For details, see [AudioEncoding].
  final int sampleRateHertz;

  /// The number of channels in the input audio data. ONLY set this for
  /// MULTI-CHANNEL recognition. Valid values for LINEAR16 and FLAC are 1-8.
  /// Valid values for OGG_OPUS are '1'-'254'.
  /// Valid value for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only 1.
  /// If 0 or omitted, defaults to one channel (mono).
  ///
  /// Note: We only recognize the first channel by default.
  /// To perform independent recognition on each channel
  /// set [enableSeparateRecognitionPerChannel] to 'true'.
  final int audioChannelCount;

  /// This needs to be set to true explicitly and audioChannelCount > 1 to get
  /// each channel recognized separately. The recognition result will contain a
  /// channelTag field to state which channel that result belongs to.
  /// If this is not true, we will only recognize the first channel.
  /// The request is billed cumulatively for all channels recognized:
  /// [audioChannelCount] multiplied by the length of the audio.
  final bool enableSeparateRecognitionPerChannel;

  /// Required. The language of the supplied audio as a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Example: "en-US".
  /// See [Language Support](https://cloud.google.com/speech-to-text/docs/languages)
  /// for a list of the currently supported language codes.
  final String languageCode;

  /// Maximum number of recognition hypotheses to be returned.
  /// Specifically, the maximum number of [SpeechRecognitionAlternative]
  /// messages within each [SpeechRecognitionResult].
  /// The server may return fewer than maxAlternatives.
  /// Valid values are 0-30. A value of 0 or 1 will return a maximum of one.
  /// If omitted, will return a maximum of one.
  final int maxAlternatives;

  /// If set to true, the server will attempt to filter out profanities,
  /// replacing all but the initial character in each filtered word with
  /// asterisks, e.g. "f***". If set to false or omitted, profanities won't
  /// be filtered out.
  final bool profanityFilter;

  /// List of SpeechContext. A means to provide context to assist the
  /// speech recognition. For more information,
  /// see [speech adaptation](https://cloud.google.com/speech-to-text/docs/context-strength).
  /// Currently not supported.
  // final List<_cs.SpeechContext> speechContexts;

  /// If true, the top result includes a list of words and the start and end
  /// time offsets (timestamps) for those words. If false, no word-level
  /// time offset information is returned. The default is false.
  final bool enableWordTimeOffsets;

  /// If 'true', adds punctuation to recognition result hypotheses.
  /// This feature is only available in select languages.
  /// Setting this for requests in other languages has no effect at all.
  /// The default 'false' value does not add punctuation to result hypotheses.
  final bool enableAutomaticPunctuation;

  /// Config to enable speaker diarization and set additional parameters
  /// to make diarization better suited for your application.
  /// Note: When this is enabled, we send all the words from the beginning of
  /// the audio for the top alternative in every consecutive STREAMING responses.
  /// This is done in order to improve our speaker tags as our models learn to
  /// identify the speakers in the conversation over time.
  /// For non-streaming requests, the diarization results will be provided only
  /// in the top alternative of the FINAL SpeechRecognitionResult.
  final _cs.SpeakerDiarizationConfig diarizationConfig;

  /// Metadata regarding this request.
  final _cs.RecognitionMetadata recognitionMetadata;

  /// Which model to select for the given request.
  /// Select the model best suited to your domain to get best results.
  /// If a model is not explicitly specified, then we auto-select a model
  /// based on the parameters in the RecognitionConfig.
  final RecognitionModel model;

  /// Set to true to use an enhanced model for speech recognition.
  /// If useEnhanced is set to true and the model field is not set, then an
  /// appropriate enhanced model is chosen if an enhanced model exists
  /// for the audio.
  ///
  /// If useEnhanced is true and an enhanced version of the
  /// specified model does not exist, then the speech is recognized using
  /// the standard version of the specified model.
  final bool useEnhanced;

  /// Provides information to the recognizer
  /// that specifies how to process the request.
  RecognitionConfig({
    @required this.encoding,
    @required this.languageCode,
    this.sampleRateHertz,
    this.audioChannelCount = 1,
    this.enableSeparateRecognitionPerChannel = false,
    this.maxAlternatives = 1,
    this.profanityFilter = false,
    //this.speechContexts = const [],
    this.enableWordTimeOffsets = false,
    this.enableAutomaticPunctuation = false,
    this.diarizationConfig,
    this.recognitionMetadata,
    this.model = RecognitionModel.basic,
    this.useEnhanced = false,
  })  : assert(languageCode != null),
        assert(encoding != AudioEncoding.AMR || sampleRateHertz == 8000,
            'sampleRateHertz must be 8000.'),
        assert(encoding != AudioEncoding.AMR_WB || sampleRateHertz == 16000,
            'sampleRateHertz must be 16000.'),
        assert(
            encoding != AudioEncoding.OGG_OPUS ||
                [8000, 12000, 16000, 24000, 48000].contains(sampleRateHertz),
            'sampleRateHertz must be one of 8000, 12000, 16000, 24000, or 48000.'),
        assert(
            encoding != AudioEncoding.SPEEX_WITH_HEADER_BYTE ||
                sampleRateHertz == 16000,
            'sampleRateHertz must be 16000.');

  _cs.RecognitionConfig toConfig() => (_cs.RecognitionConfig()
    ..encoding = _encoding(encoding)
    ..languageCode = languageCode
    ..sampleRateHertz = sampleRateHertz
    ..audioChannelCount = audioChannelCount
    ..enableSeparateRecognitionPerChannel = enableSeparateRecognitionPerChannel
    ..maxAlternatives = maxAlternatives
    ..profanityFilter = profanityFilter
    // NOT Supported
    //..speechContexts = speechContexts
    ..enableWordTimeOffsets = enableWordTimeOffsets
    ..enableAutomaticPunctuation = enableAutomaticPunctuation
    ..diarizationConfig = diarizationConfig ?? _cs.SpeakerDiarizationConfig()
    ..metadata = recognitionMetadata ?? _cs.RecognitionMetadata()
    ..model = _model(model)
    ..useEnhanced = useEnhanced
    ..speechContexts);

  String _model(RecognitionModel model) => model
      .toString()
      .replaceAll('RecognitionModel.', '')
      .replaceAll('basic', 'default');

  _cs.RecognitionConfig_AudioEncoding _encoding(AudioEncoding encoding) {
    switch (encoding) {
      case AudioEncoding.ENCODING_UNSPECIFIED:
        return _cs.RecognitionConfig_AudioEncoding.ENCODING_UNSPECIFIED;
        break;
      case AudioEncoding.LINEAR16:
        return _cs.RecognitionConfig_AudioEncoding.LINEAR16;
        break;
      case AudioEncoding.FLAC:
        return _cs.RecognitionConfig_AudioEncoding.FLAC;
        break;
      case AudioEncoding.MULAW:
        return _cs.RecognitionConfig_AudioEncoding.MULAW;
        break;
      case AudioEncoding.AMR:
        return _cs.RecognitionConfig_AudioEncoding.AMR;
        break;
      case AudioEncoding.AMR_WB:
        return _cs.RecognitionConfig_AudioEncoding.AMR_WB;
        break;
      case AudioEncoding.OGG_OPUS:
        return _cs.RecognitionConfig_AudioEncoding.OGG_OPUS;
        break;
      case AudioEncoding.SPEEX_WITH_HEADER_BYTE:
        return _cs.RecognitionConfig_AudioEncoding.SPEEX_WITH_HEADER_BYTE;
        break;
      default:
        return _cs.RecognitionConfig_AudioEncoding.ENCODING_UNSPECIFIED;
    }
  }
}

class StreamingRecognitionConfig {
  /// Required. Provides information to the recognizer that specifies
  /// how to process the request.
  final RecognitionConfig config;

  /// If false or omitted, the recognizer will perform continuous recognition
  /// (continuing to wait for and process audio even if the user pauses speaking)
  /// until the client closes the input stream (gRPC API) or until the maximum
  /// time limit has been reached. May return multiple
  /// StreamingRecognitionResults with the is_final flag set to true.
  ///
  /// If true, the recognizer will detect a single spoken utterance.
  /// When it detects that the user has paused or stopped speaking,
  /// it will return an END_OF_SINGLE_UTTERANCE event and cease recognition.
  /// It will return no more than one StreamingRecognitionResult with the
  /// is_final flag set to true.
  final bool singleUtterance;

  /// If true, interim results (tentative hypotheses) may be returned as
  /// they become available (these interim results are indicated with the
  /// is_final=false flag). If false or omitted, only is_final=true result(s)
  /// are returned.
  final bool interimResults;

  /// A streaming speech recognition result corresponding to a portion of
  /// the audio that is currently being processed.
  StreamingRecognitionConfig({
    @required this.config,
    this.singleUtterance = false,
    this.interimResults = false,
  })  : assert(singleUtterance != null),
        assert(interimResults != null);

  _cs.StreamingRecognitionConfig toConfig() => (_cs.StreamingRecognitionConfig()
    ..config = config.toConfig()
    ..singleUtterance = singleUtterance
    ..interimResults = interimResults);
}
