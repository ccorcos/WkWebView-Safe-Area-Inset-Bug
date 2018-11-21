## WKWebView `env(safe-area-inset-*)` Bug

This app shows an html webpage inside a webview that measures the `env(safe-area-inset-*)` css variables.

You will notice that these variables are not available on the initial load of the app, or after the window load event, or the document DOMContentLoaded event. These CSS variables only seem to be available at some arbitrary time after the app is loaded.

However, if you open up the same webpage (http://localhost:8000/index.html) in iOS Safari in landscape mode and hit refresh, you'll notice that these CSS variables are available at initial load time.

## Running the app

```sh
git clone https://github.com/ccorcos/react-native-demo.git
cd react-native-demo
git checkout safe-area-inset-bug
npm install
# Server the index.html file
python -m SimpleHTTPServer 8000
# Start react native
npm start
# Open Xcode and run the app.
open ios/chetapp.xcodeproj
```

open WebViewBug.xcodeproj/