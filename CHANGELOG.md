## [5.3.0] - Setup to take in optional metadata keys/values to support api key restricting
* Thanks to @dannnnthemannnn for PR

## [5.2.1] - Add ability to set enableSpokenPunctuation (V1)
* Thanks to @sidlatau for PR

## [5.2.0+1] - Remove Todo from Readme.
* Remove Todos from Readme as they are displayed wrong in pub.dev and all the main features are now implemented.

## [5.2.0] - Add support for setting resource location in V2 endpoints.
* Add support for setting resource location in V2 endpoints

## [5.1.0] - Add support for regional endpoint.
* Add support for regional endpoint like https://eu-speech.googleapis.com

## [5.0.0] - Add endless streaming support *experimental.
* Add EndlessStreamingService, EndlessStreamingServiceBeta, EndlessStreamingServiceV2
* Add new example for endless streaming
* You can now use the endless streaming service to stream audio to the Google Speech API without a time limit.
* ** This is an experimental feature for now and may not work as expected. **

## [4.4.0] - Update RecognitionConfig to match the latest version of the API.
* Add latestLong and latestShort to RecognitionConfig
* Add short to RecognitionConfigV2

## [4.3.0] - Add pollingLongRunningRecognize.
* Add pollingLongRunningRecognize
* Fix longRunningRecognize for V2

## [4.2.0] - Enable support for Api Key Authentication
* Enable support for Api Key Authentication

## [4.1.0] - Add projectId parameter to SpeechToTextV2.viaServiceAccount to prevent NullPointerException
* Add projectId parameter to SpeechToTextV2.viaServiceAccount to prevent NullPointerException

## [4.0.0+1] - Add missing Documentation for Google Speech V2
* Add missing Documentation for Google Speech V2

## [4.0.0] - Add Google Speech V2 Support
* Add all the features required to use Google Speech V2.
* Add new Audio File Example for Version 2

## [3.0.0] - Add new ways to Authenticate.
* Enable support for Access Token Authentication
* Enable support for ThirdPartyAuthenticator

## [2.2.0] - Enable MP3 Support for Speech Beta.
* Enable MP3 Support for Speech Beta

## [2.1.2] - Add new RecognitionModel medical_dictation.
* Add new RecognitionModel medical_dictation and medical_conversation

## [2.1.1] - Provide a Readme file in the Example folder.
* Added a readme file to the example folder, to follow the package layout conventions.

## [2.1.0] - Add longRunningRecognize.
* Add longRunningRecognize method

## [2.0.1] - Fix SpeechContext.
* Add parameter boost to SpeechContextBeta
* Remove "currently not supported" flag from SpeechContext

## [2.0.0] - Add support for Flutter 2 and null safety.
* Now supporting null safety.

## [1.2.1] - Add possibility to cancel audio stream subscription.
* Add possibility to cancel audio stream subscription.

## [1.2.0] - Add SpeechContext support.
* Add SpeechContext support.

## [1.1.1] - Fix import and naming errors.
* Fix import and naming errors.

## [1.1.0] - Add Google Speech Beta support.
* Add all the features required to use Google Speech Beta.

## [1.0.2] - An example with a microphone input added.
* Added an example project which shows the use of google_speech with a microphone input.

## [1.0.1] - Provide a Readme file in the Example folder.
* Added a readme file to the example folder, to follow the package layout conventions.

## [1.0.0] - Initial release on pub.dev.
* Added a function to use the Google Speech Api via request.
* Added a function to use the Google Speech Api via a stream.
* Added a sample project.

