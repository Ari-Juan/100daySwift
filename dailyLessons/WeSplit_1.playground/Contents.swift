import UIKit
import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    // the @State lets the button run, gievn we are doing this inside a struct
    // structs are const therfore we couldnt put info that changes.
    // allows us to work around structs
    @State private var name = ""
    let students = ["Hary", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Button("Tap count: \(tapCount)"){
            tapCount += 1
        }
        NavigationStack{
            Form{
                TextField("Enter your name:", text: $name)
                //the $ tells swift to read and write our value hence allowing us
                // to run the code, two way binding a variable
                Text("Your Name is: \(name)")
                //this one doesnt need a dollar sign bc we only want to read it
                
                Section{
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                //sections create diffrent little sections on the screen
                // for the text or items
                Section{
                    Text("Hello, World!")
                }
               
                Picker("Select your Student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
                // this is how u write a form
            }
            .navigationTitle("Select a Student")
            .navigationBarTitleDisplayMode(.inline)
            //creates title and centers it small in the middle
        }
    }
}

#Preview {
    ContentView()
}

