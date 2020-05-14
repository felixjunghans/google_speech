# google_speech

This package allows the use of [Google Speech Api](https://cloud.google.com/speech-to-text/docs) with grpc as a pure 
Dart implementation. With the support of grpc it is also possible to use the streaming transcription 
of the Google Speech Api with this package.

## Before we get started

To use the Google Speech Api it is first of all important to create a Google Cloud account and activate the Speech Api.
The best way to do this is to follow the first point of this [documentation](https://cloud.google.com/speech-to-text/docs/quickstart-client-libraries).

After you have created a service account and downloaded the Json file with the necessary access data, you can start 
using this package. 

At this time this package only supports authentication via service account. It is therefore absolutely necessary to create a service account and have the necessary Json data ready.

## Getting Started

#### Authentication via a service account

There are two ways to log in using a service account. Option number one is the direct transfer of the Json file. 
Make sure that the file really exists in the path you passed and that the file has a .json extension.
    
    import 'package:google_speech/speech_client_authenticator.dart';
    
    final serviceAccount = ServiceAccount.fromFile(File('PATH_TO_FILE'));

Option number two is to pass the Json data directly as a string. 
This could be used for example to load the data from an external service first and not
have to keep it directly in the app.

    
    final serviceAccount = ServiceAccount.fromString(r'''{YOUR_JSON_STRING}''');
    
    /// OR load the data from assets
    
    final serviceAccount = ServiceAccount.fromString(
        '${(await rootBundle.loadString('assets/test_service_account.json'))}');
        
After you have successfully connected the ServiceAccount, you can already start using the Api.

#### Initialize SpeechToText

    import 'package:google_speech/flutter_google_speech.dart';
    
    final speechToText = SpeechToText.viaServiceAccount(serviceAccount);

#### Transcribing a file using recognize