//
//  MyAppIosApp.swift
//  MyAppIos
//
//  Created by Arlan Biati on 10/10/25.
//


import SwiftUI
import TestRockAppReact

@main
struct MyAppIosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    init() {
      ReactNativeBrownfield.shared.bundle = ReactNativeBundle
      ReactNativeBrownfield.shared.startReactNative()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        Text("Welcome to the Native App")
          .font(.title)
          .bold()
          .padding()

        NavigationLink("Push React Native Screen") {
            ReactNativeView(moduleName: "TestRockApp").navigationBarHidden(true)
        }
      }
    }
  }
}

// Minimal AppDelegate just to satisfy React Native's requirements
class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
}
