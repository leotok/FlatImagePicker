## FlatImagePicker
A custom view, with Flat design, that lets you choose between gallery and camera from UIImagePickerController.

#### How to
Add the following delegate to your viewcontroller:

```swift
class ViewController: UIViewController, FlatImagePickerViewControllerDelegate
```
and call it inside a action:
```swift
  var flat = FlatImagePickerViewController(shouldSaveImage: false)
  flat.delegate = self
  self.presentViewController(flat, animated: false, completion: nil)
```

#### Protocol
Use this protocol to save the selected image:
```swift
  func FlatimagePickerViewController(imagePicker:FlatImagePickerViewController, didSelectImage image: UIImage)
```
