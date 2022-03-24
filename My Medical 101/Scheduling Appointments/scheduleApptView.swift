//
//  ContentView.swift
//  My Medical 101
//
//  Created by Vibha Rajagopalan on 2/21/22.
//
import SwiftUI
import AssetsLibrary

struct ScheduleView : View {
    @EnvironmentObject var reasonForVisit: ScheduleAppt
    // TODO: time squares (?)
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
        NavigationView {
            GeometryReader { geometry in
                VStack{
                    Text("Schedule Your Appointment").bold()
                        .modifier(scheduleAppttitle()).padding(.bottom)
                    Text("1. Choose a time between 8 a.m. - 5 p.m. \n2. Then, select the reason for your visit or fill in your reason in the text box below.").padding(.horizontal).modifier(explanation())
                    DatePicker(
                        "",
                        selection: $reasonForVisit.date,
                         in: dateRange,
                        displayedComponents: [.date, .hourAndMinute]
                    ).padding(.all).frame(width: 70.0, height: 100.0).modifier(dateField())

                    VStack {
                        Text("Reason for Visit: ").font(.custom("Times New Roman", size: 20)).bold()
                            .frame(height: 45.0)
                        HStack{
                            Button(action: {$reasonForVisit.generalCheckup.wrappedValue=true;$reasonForVisit.followUp.wrappedValue = false; $reasonForVisit.refill.wrappedValue = false; $reasonForVisit.injury.wrappedValue = false
                            }) {
                                if $reasonForVisit.generalCheckup.wrappedValue == true{
                                    Text("General Checkup")
                                      .modifier(ButtonClicked())
                                }
                                else{
                                    Text("General Checkup")
                                      .modifier(ButtonText())
                                }
                            }.padding([.top, .leading])
                            Button(action: {$reasonForVisit.followUp.wrappedValue=true;$reasonForVisit.generalCheckup.wrappedValue = false; $reasonForVisit.refill.wrappedValue = false; $reasonForVisit.injury.wrappedValue = false}) {
                                if $reasonForVisit.followUp.wrappedValue == true{
                                    Text("Follow \nup")
                                      .modifier(ButtonClicked())
                                }
                                else{
                                    Text("Follow \nup")
                                      .modifier(ButtonText())
                                }
                            }.padding(.top)
                            Button(action: {$reasonForVisit.refill.wrappedValue=true;$reasonForVisit.generalCheckup.wrappedValue = false; $reasonForVisit.followUp.wrappedValue = false; $reasonForVisit.injury.wrappedValue = false}) {
                                if $reasonForVisit.refill.wrappedValue == true{
                                    Text("Refill")
                                      .modifier(ButtonClicked())
                                }
                                else{
                                    Text("Refill")
                                      .modifier(ButtonText())
                                }
                            }.padding(.top)
                            Button(action: {$reasonForVisit.injury.wrappedValue=true;$reasonForVisit.generalCheckup.wrappedValue = false; $reasonForVisit.followUp.wrappedValue = false; $reasonForVisit.refill.wrappedValue = false}) {
                                if $reasonForVisit.injury.wrappedValue == true{
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
                    Button(action: {
                        submitButtonClicked=true;
                        $reasonForVisit.submitButton.wrappedValue = true}) {
                        if reasonForVisit.submitButton &&
                            (reasonForVisit.generalCheckup == true ||
                             reasonForVisit.followUp == true ||
                             reasonForVisit.refill == true ||
                             reasonForVisit.injury == true ||
                             reasonForVisit.typedReasonForVisit != ""){
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
        .navigationBarTitleDisplayMode(.inline)
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
