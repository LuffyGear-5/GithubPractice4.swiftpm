import SwiftUI

struct ContentView: View {
    @State var tasks : [String] = ["Go to Ap Comp Sci P", "Learn SwiftUI", "Build an app"]
    var body: some View {
        
        List(tasks,id: \.self){ tasks in
            Text(tasks)
        }
    }
}
