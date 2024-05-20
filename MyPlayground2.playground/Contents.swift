struct User: Hashable, Codable {
    var uid : String
    var name, uniqname, profileImage: String
    var Score : Int
     
    var data: [String: Any] {
        [
            "name":name,
            "uniqname":uniqname,
            "profileImage":profileImage,
            "Score":Score,
            "uid": uid
        ]
    }
}
