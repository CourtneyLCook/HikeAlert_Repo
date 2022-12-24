//
//  PersonalInformationView.swift
//  HikeAlertGitHub
//
//  Created by Courtney Cook on 12/24/22.
//

import SwiftUI

struct Information_Form: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Personal Info", destination: PersonalInfoView())
                NavigationLink("Dummy", destination: dummyName())
            }
        }
    }
}

struct PersonalInfoView: View {
    // Get saved data for inputs, or use empty string
    @State var person: Person = Person(
        name: UserDefaults.standard.string(forKey: "nameKey") ?? "",
        birth: UserDefaults.standard.string(forKey: "birthKey") ?? "",
        home: UserDefaults.standard.string(forKey: "homeKey") ?? "",
        phone: UserDefaults.standard.string(forKey: "phoneKey") ?? "",
        email: UserDefaults.standard.string(forKey: "emailKey") ?? "")
    
    
    
    //@State var name: String = UserDefaults.standard.string(forKey: "nameKey") ?? ""
   // @State var birth: String = UserDefaults.standard.string(forKey: "birthKey") ?? ""
    // @State var home: String = UserDefaults.standard.string(forKey: "homeKey") ?? ""
  //  @State var phone: String = UserDefaults.standard.string(forKey: "phoneKey") ?? ""
  //  @State var email: String = UserDefaults.standard.string(forKey: "emailKey") ?? ""
    
    @State var inputname: String = ""
    @State var inputbirth: String = ""
    @State var inputhome: String = ""
    @State var inputphone: String = ""
    @State var inputemail: String = ""
    // @State private var selection = ""
    
//    let states = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
    var body: some View {
        ZStack {
            Color(.green)
            NavigationView {
                Form {
                    Group {
                        Section(header: Text("Name")) {
                            HStack {
                                TextField("Full Name", text: $inputname).onAppear() {
                                    self.inputname = self.person.name
                                }
                            }
                        }
//                        Group {
//                                NavigationLink("Description", destination: DescriptionView())
//                                    .foregroundColor(.black)
//                        }
                        Group {
                            Section(header: Text("Date of Birth")) {
                                HStack {
                                    TextField("MM/DD/YYYY", text: $inputbirth).onAppear() {
                                        self.inputbirth = self.person.birth
                                    }
                                }
                            }
                        }
//                        Group {
//                            Section(header: Text("Residence")) {
//                                HStack {
//                                    TextField("Hometown", text: $inputhome)
//                                    Text(home)
//                                }
                                
//                                Picker("State", selection: $selection){
//                                    ForEach(states, id: \.self) {
//                                        Text($0)
//
//                                    }
//                                }
//                                .pickerStyle(.menu)
//                            }
 //                       }
                        Group {
                            Section(header: Text("Contact Information")) {
                                HStack {
                                    TextField("Phone Number", text: $inputphone).onAppear() {
                                        self.inputphone = self.person.phone
                                    }
                                }
                                HStack {
                                    TextField("Email", text: $inputemail).onAppear() {
                                        self.inputemail = self.person.email
                                    }
                                }
                                
                            }
                        }
                        Group {
                            NavigationLink("Medical Information", destination: Medical())
                                .foregroundColor(.black)
                        }
                        Group {
                            NavigationLink("Emergency Contacts", destination: EmergencyContact())
                                .foregroundColor(.black)
                        }
                        Group {
                            NavigationLink("View As", destination: ViewAs())
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink("Save Data", destination: ContentView()) {
                        
                    
                        Button(action: {
                            UserDefaults.standard.set(inputname, forKey: "nameKey")
                            // name = inputname
                            print("Saved value: \(inputname)")
                            
                            UserDefaults.standard.set(inputbirth, forKey: "birthKey")
                            print("Saved value: \(inputbirth)")
                            
                            // UserDefaults.standard.set(inputhome, forKey: "homeKey")
                            // home = inputhome
                            // print("Saved value: \(inputhome)")
                            
                            UserDefaults.standard.set(inputphone, forKey: "phoneKey")
                            print("Saved value: \(inputphone)")
                            
                            UserDefaults.standard.set(inputemail, forKey: "emailKey")
                            print("Saved value: \(inputemail)")
                        }) {
                            // button appearance
                        }
                    }
                    
                }
                .navigationBarTitle("Personal Information")
                //.navigationBarTitleDisplayMode(.inline)
                
                
            }
        }
    }
}
    
    struct dummyName: View {
        @State var dummy: String = UserDefaults.standard.string(forKey: "dummyKey") ?? ""
        @State var inputdummy: String = ""
        var body: some View {
            HStack {
                TextField("dsfs", text: $dummy)
                Text(dummy)
            }
            Section {
                
                    Button("Save Data") {
                        UserDefaults.standard.set(dummy, forKey: "dummyKey")
                        // dummy = inputdummy
                        print("Saved value: \(inputdummy)")
                    }
            }
        }
    }
    
    
    
    struct Information_Form_Previews: PreviewProvider {
        static var previews: some View {
            Information_Form()
        }
    }

