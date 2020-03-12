# CC-AfterHours-CustomSliders
CC's After Hours project on how to create custom sliders and use slider values for Core Image filters. 

## Step 1: Setup
1. Fork and Clone this repo.
2. Open the `CustomSlider.xcodeproj` starter file.
3. Review the storyboard scenes and view controller files.

------
## Step 2: Custom Sliders and CIFilter
### SliderViewController:
1. Create outlets for the slider and `valueLabel`
2. Create an action for the sliderValue and make it a class of `CustomSlider`
3. Create another class at the end of this file and call it `CustomSlider`. 
4. Make the `CustomSlider` of type `UISlider` and insert this function:
```override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let point = CGPoint(x: bounds.minX, y: bounds.midY)
        return CGRect(origin: point, size: CGSize(width: bounds.width, height: 20)) // height changes the height of the slider
    }
```
5. Update the text in the `valueLabel` to show the value change from the slider.
6. Default the `valueLabel` to say "0% satisfied"
7. Programmatically changed the **min** and **max** track tint color, and set the thumb image on the slider.

### ColorsViewController:
1. Create 2 properties to save your 2 colors.
2. Create outlets for your swatchSquare, sliders, and 2 color buttons.
3. Create actions for red, green, and blue values changed. 
⋅⋅* Add `updateViews` function inside each action.
4. Create `updateViews` function. 
⋅⋅* Set each red, green, and blue value to a CGFloat value. 
⋅⋅* Set the `swatchSquare`'s background color.
5. Create actions for `saveColor` buttons. 
⋅⋅* Set each color to current color. 
6. Implement `prepare for segue` method. 
⋅⋅* Set `destinationVC` colors to properties at the top of this file. 
7. Call `updateViews` function inside of `viewDidLoad`

### FilterViewController:
1. Create properties to hold color properties from the segue.
2. Create properties for Core Image context and filter.
3. Create an outlet for an `imageView`.
4. Creat an action for the "Check Me Out" button.
⋅⋅* Set the context to a new instance of `CIContext`.
⋅⋅* Unwrap the color properties from the passed segue.
⋅⋅* Set the filter to a new instance of `CIFilter` with the CIFilter's name, set the parameters to the color properties, and specify the origin and width.
⋅⋅* Set the output image to the current `imageView`'s image.

------
## Step 3: Build & Run
### SliderViewController:
1. Try the slider and see the different colors on the left (min track) and right (max track). 
2. Notice the label updates the text when the value of the slider changes. 

### ColorsViewController:
1. Try the sliders, notice how "mixing" the different sliders (red, green, and blue) creates a new swatch color. 
2. Create a new swatch color, and save it as Color 1. Create a different swatch color and save it as Color 2. 

### FilterViewController:
1. Click on the "Check Me Out" button. 
2. A checkboard with your saved Color 1 and Color 2 colors should appear.
3. Go back and create a new swatch color, resave, and try the "Check Me Out" button again. Pretty neat filter, huh? 
⋅⋅⋅ [This Core Image filter uses a CIVector object to "draw" the checkboard pattern with the 2 input colors.] (https://developer.apple.com/library/archive/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/CICheckerboardGenerator)

------
## Solution Code:
Please visit this [repo](https://github.com/ladybeitel). 
