swift build --destination /Library/Developer/Destinations/arm64-5.3.3-RELEASE.json
docker build --file ./Dockerfile-arm64 --tag helloworld:arm64-latest .
