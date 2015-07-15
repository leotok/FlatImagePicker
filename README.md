## FlatImagePicker
A custom view for iOS developers that lets you choose between gallery and camera from UIImagePickerController.
Flat design. Icons by https://icons8.com.

#### How to
Add the following delegate to your viewcontroller:

```swift
class ViewController: UIViewController, FlatImagePickerViewControllerDelegate
```
and call it inside an action:
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
and this one to any other control you need to have over de component:
```swift
  func FlatimagePickerViewControllerDidCancel(imagePicker:FlatImagePickerViewController)
  ```
