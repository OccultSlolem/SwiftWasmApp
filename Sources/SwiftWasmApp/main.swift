import TokamakDOM

struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello, world!")
                    .padding(.horizontal)
                    .font(.largeTitle)
                Spacer()
                Text("Ethan Hanlon")
                    .padding(.horizontal)
            }
            Divider()
            
            Spacer()
            Text("Do a thing")
            Spacer()
            Divider()
            HStack {
                Text("Copyright lolol")
            }
        }
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
TokamakApp.main()
