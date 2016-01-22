// PickerController
// Standard alert view by choose camera o camera roll
//
// IDECodeSnippetCompletionPrefix: pv
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 14E5A484-2149-413F-87E7-B04CBA25D3DA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    func chooseImageFrom() {
        
        var image      = UIImagePickerController()
        image.delegate = self //UIImagePickerControllerDelegate, UINavigationControllerDelegate
        
        var isBackground:Bool = false // Must be Global var
        
        var imageTo    = isBackground ? "IMAGE_FOR_BACGROUND" : "IMAGE_FOR_PROFILE"
        let alert = PSKAlertController.showActionSheet(imageTo, aBtnTitle: "CAMERA_ROLL", bBtnTitle: "CAMERA", cancelBtn: { () -> Void in
            
            //self.dismissViewControllerAnimated(true , completion: nil)
            
            }, aBtn: { () -> Void in // Camera Roll
                
                image.sourceType    = UIImagePickerControllerSourceType.PhotoLibrary
                image.allowsEditing = false
                
                self.presentViewController(image, animated: true, completion: nil)
                
            }) { () -> Void in
                
                if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
                {
                    image.sourceType    = UIImagePickerControllerSourceType.Camera
                    image.allowsEditing = true
                    
                    self.presentViewController(image, animated: true, completion: nil)
                    
                } else {
                    
                    let noCamera = PSKAlertController.showOnlyDoneButton("Alert", aMsg: "IOS Simulator has no camera", doneBtn: { () -> Void in
                        self.dismissViewControllerAnimated(true , completion: nil)
                    })
                    self.presentViewController(noCamera, animated: true, completion: nil)
                }
        }
        self.presentViewController(alert, animated: true, completion: nil)
    }