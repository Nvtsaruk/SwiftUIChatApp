import SwiftUI

struct RegisterScreen: View {
    @EnvironmentObject private var coordinator: Coordinator
    @State var name: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(CGColor(gray: 0.1, alpha: 0.1)), radius: 10, x: 5, y: 5)
                .padding(.vertical)
            Group {
                VStack(alignment: .leading) {
                    Text("Name")
                    SecureField("Name", text: $name)
                    
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Group {
                VStack(alignment: .leading) {
                    Text("Last Name")
                    SecureField("Last Name", text: $lastName)
                    
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Group {
                VStack(alignment: .leading) {
                    Text("Email")
                    TextField("Email", text: $email)
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Group {
                VStack(alignment: .leading) {
                    Text("Password")
                    SecureField("Пароль", text: $password)
                    
                }
                .padding(.horizontal, 5)
                .padding(5)
            }
            .background(Color(UIColor.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            Button{
                
            }label: {
                Text("Register")
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            
        }
    }
}

#Preview {
    RegisterScreen()
}
