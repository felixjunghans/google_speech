# Google Speech

This package allows the use of [Google Speech Api](https://cloud.google.com/speech-to-text/docs) with grpc as a pure 
Dart implementation. With the support of grpc it is also possible to use the streaming transcription 
of the Google Speech Api with this package.

###### Demo recognize
![Demo with recognize](https://media.giphy.com/media/LNfVGfBpOrIJhEI2GR/giphy.gif)

###### Demo Streaming
![Demo with streaming](https://media.giphy.com/media/hrEltlpfVKj1rVr2DA/giphy.gif)

## Before we get started

To use the Google Speech Api it is first of all important to create a Google Cloud account and activate the Speech Api.
The best way to do this is to follow the first point of this [documentation](https://cloud.google.com/speech-to-text/docs/quickstart-client-libraries).

After you have created a service account and downloaded the Json file with the necessary access data, you can start 
using this package. 

At this time this package only supports authentication via service account. It is therefore necessary to create a service account and have the necessary Json data ready.

## Getting Started


### Authentication

As of version 3.0.0 there are now 3 different ways to authenticate. In addition to the old way viaServiceAccount, there is now also the possibility to authenticate via token or ThirdPartyAuthenticator.

#### Authentication via ThirdParty Authenticator [> Version 3.0.0]

```dart
   final speechToText = SpeechToText.viaThirdPartyAuthenticator(
      ThirdPartyAuthenticator(
        obtainCredentialsFromThirdParty: () async {
          // request api to get token
          final json = await requestCredentialFromMyApi();
          return AccessCredentials.fromJson(json);
          },
      ),
    );
```


#### Authentication via Token [> Version 3.0.0]

Creates a SpeechToText interface using a token.
You are responsible for updating the token when it expires.

```dart
    final speechToText = SpeechToText.viaToken(
    'Bearer',
    '<token-here>',
    );
```

#### Authentication via a service account

There are two ways to log in using a service account. Option number one is the direct transfer of the Json file. 
Make sure that the file really exists in the path you passed and that the file has a .json extension.

```dart
    import 'package:google_speech/speech_client_authenticator.dart';
    
    final serviceAccount = ServiceAccount.fromFile(File('PATH_TO_FILE'));

    final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
```

Option number two is to pass the Json data directly as a string. 
This could be used for example to load the data from an external service first and not
have to keep it directly in the app.

```dart
    final serviceAccount = ServiceAccount.fromString(r'''{YOUR_JSON_STRING}''');
    
    /// OR load the data from assets
    
    final serviceAccount = ServiceAccount.fromString(
        '${(await rootBundle.loadString('assets/test_service_account.json'))}');

    final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
```
        
After you have successfully connected the ServiceAccount, you can already start using the Api.

### Transcribing a file using recognize

##### Define a RecognitionConfig

```dart
    final config = RecognitionConfig(
                         encoding: AudioEncoding.LINEAR16,
                         model: RecognitionModel.basic,
                         enableAutomaticPunctuation: true,
                         sampleRateHertz: 16000,
                         languageCode: 'en-US');
```

##### Get the contents of the audio file

```dart
     Future<List<int>> _getAudioContent(String name) async {
       final directory = await getApplicationDocumentsDirectory();
       final path = directory.path + '/$name';
       return File(path).readAsBytesSync().toList();
     }
    
    final audio = await _getAudioContent('test.wav');
```
    
##### And finally send the request    

```dart
    final response = await speechToText.recognize(config, audio);
```
  
#### Transcribing a file using streamRecognize

##### Define a StreamingRecognitionConfig

```dart
    final streamingConfig = StreamingRecognitionConfig(config: config, interimResults: true);
```
 
##### Get the contents of the audio file as stream || or get an audio stream directly from a microphone input

```dart
     Future<Stream<List<int>>> _getAudioStream(String name) async {
       final directory = await getApplicationDocumentsDirectory();
       final path = directory.path + '/$name';
       return File(path).openRead();
     }
    
    final audio = await _getAudioStream('test.wav');
```
    
##### And finally send the request 
   
```dart
    final responseStream = speechToText.streamingRecognize(streamingConfig, audio);
    responseStream.listen((data) {
        // listen for response 
    });
```
    
[More information can be found in the official Google Cloud Speech documentation.](https://cloud.google.com/speech-to-text/docs)   

## Getting empty response ([Issue #25](https://github.com/felixjunghans/google_speech/issues/25))

If it happens that google_speech returns an empty response, then this error is probably due to the recorded audio file.

You can find more information here [https://cloud.google.com/speech-to-text/docs/troubleshooting#returns_an_empty_response](https://cloud.google.com/speech-to-text/docs/troubleshooting#returns_an_empty_response)

## Use Google Speech Beta

Since version 1.1.0 google_speech also supports the use of features available in the Google Speech Beta Api. For this you just have to use SpeechToTextBeta instead of SpeechToText.

## Use Google Speech Version 2

Since version 4.0.0 google_speech also supports the use of features available in the Google Speech V2. For this you just have to use SpeechToTextV2 instead of SpeechToText.
An Example could be found in audio_file_example_v2

### TODOs

- [x] Update streamingRecognize example
- [x] Add Google Speech V2 Support
- [ ] Add error messages for Google Speech limitations
- [ ] Add Flutter Web Support
- [x] Add longRunningRecognize support (Thanks to @spenceralbrecht)
- [x] Add alternative ways to authenticate (Thanks to @juarezfrancoA)
- [ ] Add infinity stream support
