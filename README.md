# PJRadioButtons
This is a library for creating customized radio button control for iOS Application using Objective C.

## How to use

Import PJRadioButton folder which should have

```
PJRadioButtonSet.h, PJRadioButtonSet.m , PJRadioButton.h , PJRadioButton.h , PJRadioConstants.h
```

2. Add UIButtons from the interface builder to a viewcontroller in storyboard.

3. Select all the buttons and change the class of button to PJRadioButton from the interface builder. (Select the button, select the identity inspector and change the class to custom class ```PJRadioButton```
4. Create a outset collections for the buttons that you want to be a part of ```PJRadioButtonSet```. Connect all buttons to the collection outlet in a ViewController.

   ```@property (strong, nonatomic) IBOutletCollection(PJRadioButton) NSArray *radioButtonCollection;```
   
5. In a ViewControllers implementation, create and initiate ```PJRadioButtonSet```
```
  @interface ViewController ()
  {
    PJRadioButtonSet *radioSet;
  }

- (void)viewDidLoad {
    [super viewDidLoad];
    radioSet = [[PJRadioButtonSet alloc]initWithButtons:self.radioButtonCollection];

}
```

*Note: You can download the zip file or clone the repo and run the project to test the demo. The library files are also there. Demo project was tested in Xcode 6.2*
   



