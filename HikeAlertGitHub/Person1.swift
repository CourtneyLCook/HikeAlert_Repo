//
//  Person1.swift
//  HikeAlertGitHub
//
//  Created by Courtney Cook on 12/24/22.
//

import SwiftUI

struct HikeAlertPerson: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//class Person {
//    var name: String = ""
//    var birth: String = ""
//    var home: String = ""
//    var phone: String = ""
//    var email: String = ""
//    var description: DescriptionPerson?
//
//}

struct Person {
    var name: String
    var birth: String
    var home: String
    var phone: String
    var email: String
    //var description: DescriptionPerson?

}

struct DescriptionPerson {
    var height: String
    var weight: String
    var race: String
    var haircolor: String
}

struct HikeAlertPerson_Previews: PreviewProvider {
    static var previews: some View {
        HikeAlertPerson()
    }
}
