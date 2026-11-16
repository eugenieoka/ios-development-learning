import Foundation

struct Category: Decodable, Identifiable {
    let id: String
    let name: String
    let thumbnailUrl: String?
    let subcategories: [SubCategory]?
    
    enum CodingKeys: String, CodingKey {
        case id, name, subcategories
        case thumbnailUrl = "thumbnailurl"
    }
}

struct SubCategory: Decodable, Identifiable {
    let id: String
    let name: String
    let thumbnailUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case thumbnailUrl = "thumbnailurl"
    }
}
