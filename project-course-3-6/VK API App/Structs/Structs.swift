//
//  Structs.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 22.02.2021.
//

import Foundation
import RealmSwift

struct UserStruct: Codable {
    var id: Int
    var first_name: String
    var last_name: String
    var bdate: String
    
    func toUserObject() -> UserObject {
        return UserObject(id: id,
                          first_name: first_name,
                          last_name: last_name,
                          bdate: bdate)
    }
}

struct GroupStruct: Decodable {
    var name: String
    
    func toGroupObject() -> GroupObject {
        return GroupObject(name: name)
    }
}

struct PhotoStruct: Decodable {
    var photo_1280: String
    
    func toPhotoObject() -> PhotoObject {
        return PhotoObject(photo: photo_1280)
    }
}

class UserObject: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var first_name: String = ""
    @objc dynamic var last_name: String = ""
    @objc dynamic var bdate: String = ""
    
    override init() {}
    
    convenience required init(id: Int, first_name: String, last_name: String, bdate: String) {
        self.init()
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.bdate = bdate
    }
    
    func toUserStruct() -> UserStruct {
        return UserStruct(id: id,
                          first_name: first_name,
                          last_name: last_name,
                          bdate: bdate)
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}


class GroupObject: Object {
    @objc dynamic var name: String = ""
    
    override init() {}
    
    convenience required init(name: String) {
        self.init()
        self.name = name
    }
    
    func toGroupStruct() -> GroupStruct {
        return GroupStruct(name: name)
    }
}


class PhotoObject: Object {
    @objc dynamic var photo_1280: String = ""
    
    override init() {}
    
    convenience required init(photo: String) {
        self.init()
        self.photo_1280 = photo
    }
    
    func toPhotoStruct() -> PhotoStruct {
        return PhotoStruct(photo_1280: photo_1280)
    }
}

