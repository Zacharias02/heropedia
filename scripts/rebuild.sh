
echo "Starting project rebuilding"

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

echo "Project rebuilding finished"