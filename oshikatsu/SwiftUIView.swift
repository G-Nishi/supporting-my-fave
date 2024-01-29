import SwiftUI

struct OTPView: View {
    @State private var generatedOTP: String = ""
    @State private var enteredOTP: String = ""
    
    var body: some View {
        VStack {
            Text("Generated OTP: \(generatedOTP)")
            
            TextField("Enter OTP", text: $enteredOTP)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Verify OTP") {
                verifyOTP()
            }
            .padding()
        }
        .onAppear {
            generateOTP()
        }
    }
    
    func generateOTP() {
        generatedOTP = String(Int.random(in: 1000...9999))
    }
    
    func verifyOTP() {
        if enteredOTP == generatedOTP {
            print("OTP Verified")
        } else {
            print("Invalid OTP")
        }
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
