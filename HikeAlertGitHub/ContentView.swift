//
//  ContentView.swift
//  HikeAlertGitHub
//
//  Created by Courtney Cook on 12/24/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Group {
                        Spacer()
                            .frame(height: 50)
                        ZStack {
                            Rectangle()
                            Color(red:0.87, green:1.0, blue:0.64)
                                .frame(width: 500, height: 70)
                            NavigationLink("Plan a Trip",
                                           destination: PlanaTrip())
                           .font(.system(size: 34, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                        }
                    }
                    Group {
                        Spacer()
                            .frame(height: 30)
                        NavigationLink("Edit Personal Information", destination: PersonalInfoView())
                            .font(.system(size: 32, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                        Spacer()
                            .frame(height: 30)
                    }
                    Group {
                        ZStack {
                            Rectangle()
                            Color(red:0.87, green:1.0, blue:0.64)
                                .frame(width: 500, height: 70)
                            NavigationLink("About HikeAlert", destination: About())
                                .font(.system(size: 34, design: .rounded)
                                    .weight(.bold))
                                .foregroundColor(.black)
                        }
                        Spacer()
                            .frame(height: 30)
                    }
                    Group {
                        NavigationLink("Dummy", destination: dummyName())
                    }
                        Spacer()
                            .frame(height: 200)
                    
                    
                    Group {
                        
                        ZStack {
                            Rectangle()
                            Color(red:0.1, green:0.8, blue:1.0)
                                .frame(width: 500, height: 50)
                            NavigationLink("My Trip", destination: ContinueTrip())
                                .font(.system(size: 25, design: .rounded)
                                    .weight(.bold))
                                .foregroundColor(.black)
                        }

                        }
                    
                    }
                    .navigationTitle("HikeAlert")
                    //.navigationBarTitleDisplayMode(.inline)
                }
            }
        }
                            
                        
    
    }
    


struct PlanaTrip: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Group {
                        Spacer()
                            .frame(height:50)
                        ZStack {
                            Rectangle()
                            Color(red:0.87, green:1.0, blue:0.64)
                                .frame(width: 500, height:70)
                            NavigationLink("Where Are You Going?",
                                           destination: Trip())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                        }
                        Spacer()
                            .frame(height: 25)
                    }
                    Group {
                        NavigationLink("What Are You Doing?",       destination: WhatDoing())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                        Spacer()
                            .frame(height:25)
                    }
                    Group {
                        ZStack {
                            Rectangle()
                            Color(red:0.87, green:1.0, blue:0.64)
                                .frame(width: 500, height:70)
                            NavigationLink("Estimated Time", destination: Time())
                                .font(.system(size: 25, design: .rounded)
                                    .weight(.bold))
                                .foregroundColor(.black)
                        }
                        Spacer()
                            .frame(height:25)
                    }
                    Group {
                        NavigationLink("Party Information", destination: Party())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                        Spacer()
                            .frame(height:25)
                    }
                    Group {
                        ZStack {
                            Rectangle()
                            Color(red:0.87, green:1.0, blue:0.64)
                                .frame(width: 500, height:70)
                            NavigationLink("Add photo from today", destination: TripPhoto())
                                .font(.system(size: 25, design: .rounded)
                                    .weight(.bold))
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                .navigationBarTitle("Plan a Trip")
                //.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Trip: View {
    var body: some View{
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("Search Engine")
                }
            }
        }
    }
}

struct WhatDoing: View {
    @State private var selection = Set<String>()
    let names = ["Hiking", "Climbing", "Rapelling", "Swimming", "Boating", "Kayaking", "Canoeing", "Skiing", "Snowboarding", "Caving/Splelunking", "Canyoneering", "Camping", "Road Trip", "Biking", "Horseback", "Off-Roading", "Other"
        ]

    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                List(names, id: \.self, selection: $selection) { name in
                                Text(name)
                            }
                            .navigationTitle("List Selection")
                            .toolbar {
                                EditButton()
                            }
                            .navigationTitle("Select All That Apply")
                            //.navigationBarTitleDisplayMode(.inline)
                        }
            }
        }
       
    }



struct Time: View {
    @State var inputreturn: String = ""
    @State var inputduration: String = ""
    @State var inputcheck: String = ""
    let time = ["Estimated Return Time", "Estimated Trip Time"]
    var body: some View {
        ZStack {
            Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                .opacity(0.50)
            NavigationView {
                Form {
                    Group {
                        Section(header: Text("Estimated Return Time")) {
                            TextField("HH:MM", text: $inputreturn)
                        }
                    }
                    Group {
                        Section(header: Text("Estimated Trip Time")) {
                            TextField("HH:MM", text: $inputduration)
                        }
                        Group {
                            Section(header: Text("Checkpoints")) {
                                TextField("Select Checkpoint, options for check ins at a certain time, after a certain duration, gps, or after a certain number of miles", text: $inputcheck)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Party: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("Party")
                    HStack {
                        Text("Person 1")
                        Spacer()
                        Button("Edit") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                    }
                    Button("Add Person") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
            }
        }
    }
}



struct TripPhoto: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("Add Photo Here")
                }
            }
        }
    }
}



struct DescriptionView: View {
    //@State var gender: do later
    @State var height: String = UserDefaults.standard.string(forKey: "HeightKey") ?? ""
    @State var weight: String = UserDefaults.standard.string(forKey: "WeightKey") ?? ""
    @State var race: String = UserDefaults.standard.string(forKey: "RaceKey") ?? ""
    @State var hair: String = UserDefaults.standard.string(forKey: "HairKey") ?? ""
    @State var inputheight: String = ""
    @State var inputweight: String = ""
    @State var inputrace: String = ""
    @State var inputhair: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                VStack {
                    Form {
                        Section {
                            HStack {
                                TextField(("Height"), text: $inputheight)
                                Text(height)
                            }
                            HStack {
                                TextField(("Weight"), text: $inputweight)
                                Text(weight)
                            }
                            HStack{
                                TextField(("Race"), text: $inputrace)
                                Text(race)
                            }
                            HStack {
                                TextField(("Hair Color"), text: $inputhair)
                                Text(hair)
                            }
                            Text("Add Picture")
                            Button("Save Description"){
                                UserDefaults.standard.set(inputheight, forKey: "HeightKey")
                                height = inputheight
                                inputheight = ""
                                print("Saved \(inputheight)")
                                
                                UserDefaults.standard.set(inputweight, forKey: "WeightKey")
                                weight = inputweight
                                inputweight = ""
                                print("Saved \(inputweight)")
                                
                                UserDefaults.standard.set(inputrace, forKey: "RaceKey")
                                race = inputrace
                                inputrace = ""
                                print("Saved \(inputrace)")
                                
                                UserDefaults.standard.set(inputhair, forKey: "HairKey")
                                hair = inputhair
                                inputhair = ""
                                print("Saved \(inputhair)")
                            }
                            
                        }
                    }
                    .navigationTitle("Description")
                    //.navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}


struct Medical: View {
    @State var conditions: String = UserDefaults.standard.string(forKey: "ConditionKey") ?? ""
    @State var allergies: String = UserDefaults.standard.string(forKey: "AllergyKey") ?? ""
    @State var inputallergies: String = ""
    @State var inputconditions: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    NavigationLink("Medications", destination: Medications())
                        .foregroundColor(.black)
                    HStack {
                        TextField("Medical Conditions", text: $inputconditions)
                        Text(conditions)
                    }
                    HStack {
                        TextField("List all Allergies", text: $inputallergies)
                        Text(allergies)
                    }
                    Button("Save Medical Information") {
                        
                        UserDefaults.standard.set(inputconditions, forKey: "ConditionKey")
                        conditions = inputconditions
                        inputconditions = ""
                        print("Saved \(inputconditions)")
                        
                        UserDefaults.standard.set(inputallergies, forKey: "AllergyKey")
                        allergies = inputallergies
                        inputallergies = ""
                        print("Saved \(inputallergies)")
                            
                        
                    }
                }
                .navigationTitle("Medical Information")
                //.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Medications: View {
    @State var medname: String = UserDefaults.standard.string(forKey: "MedKey") ?? ""
    @State var dose: String = UserDefaults.standard.string(forKey: "DoseKey") ?? ""
    @State var inputmed: String = ""
    @State var inputdose: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    VStack {
                        Text("Medication")
                        HStack {
                            TextField("Name of Medication", text: $inputmed)
                            Text(medname)
                        }
                        HStack {
                            TextField("Dosage", text: $inputdose)
                            Text(dose)
                        }
                        Spacer()
                        Button("Save Medications"){
                            UserDefaults.standard.set(inputmed, forKey: "MedKey")
                            medname = inputmed
                            inputmed = ""
                            print("Saved \(inputmed)")
                            
                            UserDefaults.standard.set(inputdose, forKey: "DoseKey")
                            dose = inputdose
                            inputdose = ""
                            print("Saved \(inputdose)")
                        }
                        Spacer()
                        Text("add other meds")
                    }
                }
            }
        }
    }
}

struct EmergencyContact: View {
    @State var inputcontactname: String = UserDefaults.standard.string(forKey: "ContactNameKey") ?? ""
    @State var inputcontactphone: String = UserDefaults.standard.string(forKey: "ContactPhoneKey") ?? ""
    @State var inputcontactemail: String = UserDefaults.standard.string(forKey: "ContactEmailKey") ?? ""
    @State var contactname: String = ""
    @State var contactphone: String = ""
    @State var contactemail: String = ""
    @State var option = 1
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                VStack {
                    Form {
                        Section {
                            HStack {
                                TextField("Full Name", text: $inputcontactname)
                                Text(contactname)
                            }
                            HStack {
                                TextField("Phone Number", text: $inputcontactphone)
                                Text(contactphone)
                            }
                            HStack {
                                TextField("Email", text: $inputcontactemail)
                                Text(contactemail)
                            }
                            Spacer()
                            Picker("Which Method of Contact Do You Prefer?", selection: $option) {
                                Text("Text").tag(1)
                                Text("Phone Call").tag(2)
                                Text("Email").tag(3)
                            }.pickerStyle(MenuPickerStyle())
                            Spacer()
                            Button("Save Emergency Contacts") {
                                UserDefaults.standard.set(inputcontactname, forKey: "ContactNameKey")
                                contactname = inputcontactname
                                inputcontactname = ""
                                print("Saved \(inputcontactname)")
                                
                                UserDefaults.standard.set(inputcontactphone, forKey: "ContactPhoneKey")
                                contactphone = inputcontactphone
                                inputcontactphone = ""
                                print("Saved \(inputcontactphone)")
                                
                                UserDefaults.standard.set(inputcontactemail, forKey: "ContactEmailKey")
                                contactemail = inputcontactemail
                                inputcontactemail = ""
                                print("Saved \(inputcontactemail)")
                            }
                        }
                        .navigationTitle("Emergency Contacts")
                        //.navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
        }
        }
    }
    
    
    
    
struct Tracking: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("Trip Name")
                    Text("Map")
                    Text("Current Status")
                    Text("Next Check In")
                    Text("Trip Details")
                    Text("Call for Help")
                }
                .navigationTitle("Tracking")
                //.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
    
    
struct About: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Group{
                        NavigationLink("How to use HikeAlert", destination: HowTo())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                    }
                    Group {
                        NavigationLink("What is HikeAlert?", destination: WhatIs())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                    }
                    Group {
                        NavigationLink("How to Adventure Safely", destination: AdventureSafe())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                    }
                    Group {
                        NavigationLink("Contact Us", destination: Contact())
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                    }
                    Group {
                        Text("Terms and Conditions")
                            .font(.system(size: 25, design: .rounded)
                                .weight(.bold))
                            .foregroundColor(.black)
                    }
                }
                .navigationTitle("About HikeAlert")
                //.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

    struct HowTo: View {
        var body: some View {
            NavigationView {
                ZStack {
                    Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                        .opacity(0.50)
                    ScrollView {
                        Text("How to Use")
                    }
                }
            }
        }
    }
    
    struct WhatIs: View {
        var body: some View {
            NavigationView {
                ZStack {
                    Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                        .opacity(0.50)
                    ScrollView {
                        Text("What is HikeAlert?")
                    }
                }
            }
        }
    }
    
    struct AdventureSafe: View {
        var body: some View {
            NavigationView {
                ZStack {
                    Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                        .opacity(0.5)
                }
                ScrollView {
                    Text("How to Adventure Safely")
                }
            }
        }
    }
    
    struct Contact: View {
        var body: some View {
            NavigationView {
                ZStack {
                    Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                        .opacity(0.50)
                    ScrollView {
                        Text("Email")
                        Text("Website")
                        Text("Social Media?")
                    }
                    .navigationTitle("Contact Us")
                    //.navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
    
struct ContinueTrip: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("My Trip")
                    Text("Map")
                    NavigationLink("Next Check In:", destination: CheckIn())
                        .foregroundColor(.black)
                    NavigationLink("Edit My Trip", destination: PlanaTrip())
                        .foregroundColor(.black)
                    NavigationLink("I Need Help", destination: Help())
                    Text("Begin [activity]")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct CheckIn: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                ScrollView {
                    Text("Check in List")
                }
            }
        }
    }
}

struct Help: View {
    @State var inputproblem: String = UserDefaults.standard.string(forKey: "ProblemKey") ?? ""
    @State var problems: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color.red.edgesIgnoringSafeArea(.all)
                    .opacity(0.20)
                VStack {
                    Menu("Select an Option") {
                        Text("Notify Emergency Contacts")
                        Text("Notify Non-Emergency Personel")
                        Text("Notify Emergency Personel")
                    }
                    Menu("What's Wrong?") {
                        Text("Injured")
                        Text("Lost")
                        Text("Stuck")
                        Text("Dangerous Conditions")
                        Text("Someone Else Needs Help")
                    }
                    TextField("Specify Problem", text: $inputproblem)
                    Text(problems)
                }
            }
        }
    }
}

struct Settings: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.87, green:1.0, blue:0.64).edgesIgnoringSafeArea(.all)
                    .opacity(0.50)
                Text("Settings")
                Text("Notify First")
            }
        }
    }
}

struct ViewAs: View {
    var body: some View {
        NavigationView{
            Text("View As")
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
