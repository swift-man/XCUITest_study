# runSmokeTest.sh
# CI에서 SmokeTest를 실행하도록 하는 도구입니다.

# 마지막으로 실행했던 테스트 결과가 남아있다면 제거합니다
rm -rf resultBundle
rm -rf resultBundle.xcresult

SIMULATOR_NAME="iPhone SE (3rd generation)"
SIMULATOR_ID=$(ruby getSimulatorMatchingCondition.rb "$SIMULATOR_NAME" "15-5")
BUNDLE_ID="com.swiftman.XCUITest-study"
BOOTED=$(xcrun simctl list 'devices' | grep "$SIMULATOR_NAME (" | head -1  | grep "Booted" -c)

open -a simulator

if [ $BOOTED -eq 0 ]
then
  # 아직 우리가 원하는 시뮬레이터카 안 켜져 있으면 켭니다.
  xcrun simctl boot $SIMULATOR_ID
fi

# 테스트를 실행하기 전에, 기존에 설치된 앱을 제거합니다.
xcrun simctl uninstall $SIMULATOR_ID $BUNDLE_ID

# 실제 테스트를 실행합니다.
set -e -o pipefail 
xcodebuild -workspace XCUITest_study.xcworkspace \
  -scheme XCUITest_studyUITests \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,id=$SIMULATOR_ID" \
  -testPlan SmokeTests \
  -derivedDataPath build/ \
  # 👇 테스트 실패시, CI에 업로드하기 편하도록, resultBundle이 저장되는 위치를 지정합니다.
  -resultBundlePath resultBundle \
  test
