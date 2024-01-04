import SwiftUI


enum Page: Hashable {
    case loginScreen
    case registerScreen
//    case hotelRoom(hotelName: String)
//    case bookingScreen
//    case paidScreen
}

final class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
            case .loginScreen:
                LoginScreen()
            case .registerScreen:
                RegisterScreen()
        }
    }
}

