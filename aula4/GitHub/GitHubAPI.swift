import Foundation

struct GitHubAPI {
    
    static let baseURL = URL(string: "https://api.github.com/users/")!
    
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }
    
    static func fetchUser(username: String) async throws -> GitHubUser {
        
        let url = baseURL.appending(path: username)
        
        let request = URLRequest(url: url, cachePolicy: .returnCacheDataDontLoad)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let user = try decoder.decode(GitHubUser.self, from: data)

        return user
    }
}
