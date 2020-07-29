
import SwiftUI
import Combine

// Listening device into @State for updating CoreData at a defined time (not every character)
extension Binding {

    func didSet(_ then: @escaping (Value) ->Void) -> Binding {
        return Binding(
            get: { return self.wrappedValue },
            set: {
                then($0)
                self.wrappedValue = $0
            }
        )
    }
}

struct DemoView: View {
    @State var inMemoryText = NSAttributedString(string:"Testing this as a string...")
    let placeholder = NSAttributedString(string: "Placeholder")
    let nsFont: NSFont = .systemFont(ofSize: 30)

    // React to updates by calling a ViewModel function. This is just for demo.
    func react(to text: NSAttributedString) {
        latest = text.string
    }
    @State var latest = String()

    var body: some View {
        VStack(alignment: .center) {
            Text("Model updated on textDidEndEditing: \(latest)")
            TextFieldAppKit(placeholder,
                            text: $inMemoryText.didSet { text in react(to: text) },
                            nsFont: nsFont)
                .padding().padding()
                .background(background)
        }
    }

    var background: some View {
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .padding()
            .foregroundColor(Color(.controlBackgroundColor))
    }
}


