import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:chat_gpt_sdk/src/client/exception/mission_name_exception.dart';
import 'package:test/test.dart';

void main() {
  group('missing name test', () {
    test("missing name is empty token test", () {
      expect(
        () => Messages(role: Role.assistant, name: "").toJsonFunctionStruct(),
        throwsA(isA<MissionNameException>()),
      );
    });
    test("missing name is null test", () {
      expect(
        () => Messages(role: Role.assistant).toJsonFunctionStruct(),
        throwsA(isA<MissionNameException>()),
      );
    });
  });
}