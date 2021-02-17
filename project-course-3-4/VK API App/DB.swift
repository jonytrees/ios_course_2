//
//  DB.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 17.02.2021.
//

import Foundation
import RealmSwift

class UserRealm: Object {
    var id: Int = 0
    var first_name: String = ""
    var last_name: String = ""
    var bdate: String = ""
}

class PhotoRealm: Object {
    var photo_1280: URL? = nil
}

class GroupRealm: Object {
    var name: String = ""
}
