import Foundation

struct GitHubUser: Decodable {
    let login: String
    let avatarUrl: String
    let followers: Int
    let following: Int
}
