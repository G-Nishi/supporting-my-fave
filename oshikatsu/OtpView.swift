import SwiftUI
import Combine

struct OtpView: View {
    @State private var generatedOTP: String = ""
    @State private var enteredOTP: String = ""
    @State private var navigateToListView = false
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    Text("LOGIN")
                        .font(.system(size: 30))
                        .padding(.bottom, 44)

                    HStack {
                        Spacer().frame(width:28)
                        Text("We've sent an OTP on Input phone")
                        Spacer()
                    }.padding(.bottom, 4)

                    TextField("Enter OTP \(generatedOTP)", text: $enteredOTP)
                        .frame(width: 347, height: 50)
                        .border(Color.black, width: 1)
                        .padding(.bottom, 22)
                        .keyboardType(.numberPad)
                    
                    Button("VERIFY OTP") {
                        verifyOTP()
                    }
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .frame(width: 347, height: 50)
                    .background(Color.gray)
                    .padding(.bottom, 44)

                    Button {
                        generateOTP()
                    } label: {
                        Text("Not received your code? Resend code")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(width: 347, height: 50)
                    }
                    
                    NavigationLink(destination: ListView(), isActive: $navigateToListView) {
                        EmptyView()
                    }
                }
                .position(x: UIScreen.main.bounds.width / 2, y: 417)
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Invalid OTP"), message: Text("The OTP entered is incorrect. Please try again."), dismissButton: .default(Text("OK")))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            generateOTP()
        }
    }

    func generateOTP() {
        generatedOTP = String(Int.random(in: 1000...9999))
    }

    func verifyOTP() {
        if enteredOTP == generatedOTP {
            navigateToListView = true
        } else {
            showAlert = true
            navigateToListView = false
        }
    }
}

#Preview {
    OtpView()
}
