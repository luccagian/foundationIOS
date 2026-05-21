import SwiftUI

struct ContentView: View {
    @State private var user: GitHubUser?

    var body: some View {
        VStack {
            if let user {
                AsyncImage(url: UR(string: user.avatarUrl)) { 
                    img in img
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 300, height: 300)
                } placeholder: {
                    ProgressView()
                }
                if let name = user.name {
                    Text(name)
                        .font(.title)
                }
                Text("@\(user.login)"
            }
            .padding()
            .task {
                try? await user = GitHubAPI.fetchUser(username: "torvalds")
            }
        }
    }
}

                        
#Preview {
    ContentView()
}
