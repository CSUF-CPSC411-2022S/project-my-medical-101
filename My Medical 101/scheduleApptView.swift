//
//  ContentView.swift
//  My Medical 101
//
//  Created by Brenda Gomez on 2/21/22.
//
import SwiftUI
import AssetsLibrary

struct ScheduleView : View {
    @EnvironmentObject var reasonForVisit: ScheduleAppt
    @State private var date = Date()
    // TODO: change all state vars to class attributes
    // TODO: time squares
        // buttons
        @State var button1Clicked = false
        @State var button2Clicked = false
        @State var button3Clicked = false
        @State var button4Clicked = false
        @State var submitButtonClicked = false
        
        let dateRange: ClosedRange<Date> = {
            let calendar = Calendar.current
            let startComponents = DateComponents(year: 2022, month: 1, day: 1)
            let endComponents = DateComponents(year: 2022, month: 12, day: 31, hour: 5)
            return calendar.date(from:startComponents)!
                ...
                calendar.date(from:endComponents)!
        }()

    var body: some View {
        NavigationView{
            GeometryReader { geometry in
            VStack{
                Text("Schedule Your Appointment").bold()
                    .modifier(scheduleAppttitle()).padding(.bottom)
                Text("1. Choose a time between 8 a.m. - 5 p.m. \n2. Then, select the reason for your visit or fill in your reason in the text box below.").padding(.horizontal).modifier(explanation())
                DatePicker(
                    "",
                     selection: $date,
                     in: dateRange,
                    displayedComponents: [.date, .hourAndMinute]
                ).padding(.all).frame(width: 70.0, height: 100.0).modifier(dateField())

                VStack {
                    Text("Reason for Visit: ").font(.custom("Times New Roman", size: 20)).bold()
                        .frame(height: 45.0)
                    HStack{
                        Button(action: {button1Clicked=true;button2Clicked = false; button3Clicked = false; button4Clicked = false
                        }) {
                            if button1Clicked == true{
                                Text("General Checkup")
                                  .modifier(ButtonClicked())
                            }
                            else{
                                Text("General Checkup")
                                  .modifier(ButtonText())
                            }
                        }.padding([.top, .leading])
                        Button(action: {button2Clicked=true;button1Clicked = false; button3Clicked = false; button4Clicked = false}) {
                            if button2Clicked == true{
                                Text("Follow \nup")
                                  .modifier(ButtonClicked())
                            }
                            else{
                                Text("Follow \nup")
                                  .modifier(ButtonText())
                            }
                        }.padding(.top)
                        Button(action: {button3Clicked=true;button1Clicked = false; button2Clicked = false; button4Clicked = false}) {
                            if button3Clicked == true{
                                Text("Refill")
                                  .modifier(ButtonClicked())
                            }
                            else{
                                Text("Refill")
                                  .modifier(ButtonText())
                            }
                        }.padding(.top)
                        Button(action: {button4Clicked=true;button1Clicked = false; button2Clicked = false; button3Clicked = false}) {
                            if button4Clicked == true{
                                Text("Injury")
                                  .modifier(ButtonClicked())
                            }
                            else{
                                Text("Injury")
                                  .modifier(ButtonText())
                            }
                        }.padding([.top, .trailing])
                    }
                    
                    TextField("If other, type here", text: $reasonForVisit.typedReasonForVisit).textFieldStyle(.roundedBorder)
                        .padding(.all)
                    
                }.modifier(reasonForVisitField()).padding(.bottom)
                Spacer()
                Button(action: {submitButtonClicked=true; $reasonForVisit.submitButton.wrappedValue = true}) {
                    if submitButtonClicked == true && (button1Clicked == true || button2Clicked == true || button3Clicked == true || button4Clicked == true){
                        Text("Schedule Appointment")
                          .modifier(ButtonClicked())
                    }
                    else{
                        Text("Schedule Appointment")
                          .modifier(ButtonText())
                    }
                }.alert("Your Appointment has been scheduled!", isPresented: $submitButtonClicked) {
                    Button("Go back to Home page") {}
                }
                NavigationLink(destination: HelpPage()) {
                    Text("\nClick here to learn about how the app works!").font(.custom("Times New Roman", size: 12))
                }
                NavigationLink(destination: DocView()) {
                    Text("\nDoctor").font(.custom("Times New Roman", size: 12))
                }
            }
          }
        }
    }
}

struct scheduleAppttitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size:30))
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity, maxHeight: 100)
            .background(Color("pastelBlue"))
    }
}

struct explanation: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 12))
            .frame(width: 360, height: 50)
            .background(Color("lightPastelBlue"))
            .cornerRadius(20)
    }
}

struct dateField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 12))
            .frame(width: 360)
            .background(Color("pastelPurple"))
            .cornerRadius(25)
    }
}

struct reasonForVisitField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 12))
            .frame(width: 360, height: 280)
            .background(Color("pastelPurple"))
            .cornerRadius(25)
    }
}

struct ButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.custom("Times New Roman", size: 12))
           .foregroundColor(Color.black)
           .padding()
           .background(Color("darkPastelPurple"))
           .cornerRadius(10)
   }
}

struct ButtonClicked: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.custom("Times New Roman", size: 12))
            .foregroundColor(Color.black)
            .padding()
            .background(Color("pastelBlue"))
            .cornerRadius(10)
    }
}
