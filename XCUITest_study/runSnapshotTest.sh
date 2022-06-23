# runSnapshotTest.sh

# 위와 같은 테스트코드를 실행시키고,
# 그 결과물인 스크린샷들을 뽑아내어 폴더로 관리합니다.

xcodebuild -workspace XCUITest_study.xcworkspace \
  -scheme XCUITest_studyUITests \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" \
  -destination 'platform=iOS Simulator,name=iPhone 13 Pro Max' \
  -derivedDataPath build/ \
  -resultBundlePath resultBundle \
  test

xcparse screenshots \
   --test-plan-config \
   --model \
   resultBundle.xcresult \
   screenshotOutput
