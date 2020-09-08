I've filed a Feedback with Apple: FB8653658. [OpenRadar](https://openradar.appspot.com/radar?id=5061073585569792)

# Description

On iOS 14 beta 7 (18A5369b) the default accessibility labels for TabView items are using the image systemName instead of the Text.

# Steps to Reproduce

Create an app with a TabView

```swift
struct ContentView: View {
    var body: some View {
        TabView() {
            Text("Explore")
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
            Text("To Do")
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("To Do")
                }
            Text("About")
                .tabItem {
                    Image(systemName: "gear")
                    Text("About")
                }
        }
    }
}
```

Turn on Voice Control, and says "Continuously show names".

Expected: 
* The 3 tabs should show accessibility labels of "Explore", "To Do", and "About"

Actual:
* The actual accessibility labels are "House", "Checkmark.circle", and "Gear". 

This is unexpected and will cause accessibility users confusion.

Screenshot:

![Incorrect accessibility labels](https://github.com/jgale/TabBarAccessibility14/blob/main/tab_accessibility_labels.jpg)

