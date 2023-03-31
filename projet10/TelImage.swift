import SwiftUI
import UIKit
import PhotosUI

struct ProfilePhotoView: View {
    
    @State var image: UIImage? = nil
    @State var showImagePicker: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                if image != nil {
                    Image(uiImage: image!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                } else {
//                    Image(systemName: "plus.circle")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.gray)
//                    .overlay{
                        Button(action: {
                            self.showImagePicker = true
                        }, label: {
                            Image(systemName: "plus.circle")
                               
                        })
                        
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .font(.system(size: 76))

//                }
                    
//                Button("Choix Photo") {
//                    self.showImagePicker = true
//                }
//                .padding()
                
            }
//            .overlay{
//                Button(action: {
//                    self.showImagePicker = true
//                }, label: {
//                    Image(systemName: "plus")
//
//                })
//
//                .padding()
//                .background(Color.red)
//                .cornerRadius(20)
//                .offset(x: 80, y: 80)
                
            }
        }
        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$image)
        }
    }
    
    func loadImage() {
        guard image != nil else { return }
        // TODO: Save the image to user defaults or server.
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    @Environment(\.presentationMode) var presentationMode
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let pickedImage = info[.editedImage] as? UIImage {
                parent.image = pickedImage
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<ImagePicker>) {
    }
}


struct ProfilePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoView()
    }
}
