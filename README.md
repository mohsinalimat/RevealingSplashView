![Banner](/Web/banner.png)

[![Build Status](https://travis-ci.org/PiXeL16/RevealingSplashView.svg?branch=master)](https://travis-ci.org/PiXeL16/RevealingSplashView/) [![codecov.io](https://codecov.io/github/PiXeL16/RevealingSplashView/coverage.svg?branch=master)](https://codecov.io/github/PiXeL16/RevealingSplashView?branch=master) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/RevealingSplashView.svg)](https://img.shields.io/cocoapods/v/RevealingSplashView.svg) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PiXeL16/RevealingSplashView/master/LICENSE)

# RevealingSplashView
A Splash view that animates and reveals its content, inspired by the `Twitter` splash.

![RevealingSplashView](/Web/revealingSplashView.gif)

:star: Features
---
* Customizable reveal icon image.
* Customizable icon image color.
* Customizable icon image size.
* Customizable background color.
* Customizable animation duration.
* Customizable animation delay.
* Several animation to choose from.
* Easy to use :wink:.

:octocat: Installation
---
Get `RevealingSplashView` on CocoaPods, just add `pod 'RevealingSplashView'` to your `Podfile` and then run `pod install`. You can also add the github to your `Carthage` file.

If you use `Carthage` you can just install it by adding `github "PiXeL16/RevealingSplashView"` to your `Carthage` file.

:metal: Usage
---
Usage is pretty easy, just initialize your `RevealingSplashView` in your entry `ViewController` and in your `viewDidLoad()` function add it to your view. Then call `startAnimation()`:

```swift
import RevealingSplashView

override func viewDidLoad() {
        super.viewDidLoad()

        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitterLogo")!,iconInitialSize: CGSizeMake(70, 70), backgroundColor: UIColor(rgba:"#1D8FF1"))

        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)

        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed")
        }

    }
```

**Ideally** your `iconInitialSize` should match the size of the icon in your `LaunchScreen.storyboard`.

So it you set your constrains in your `LaunchScreen.storyboard` to be 80 `height` and 80 `width` you should set the same size as the initial size of the `RevealingSplashView`

:thumbsup: Animations Types
----
There are several animations to choose from just set the `animationType` property of the `RevealingSplashView`

### Twitter

Its the default animation that `Twitter` use for their app. If `animationType` is not set it will default to this one.

![RevealingSplashView](/Web/revealingSplashView.gif)

### Rotate Out

Similar to the `Twitter` one but rotating while zooming out.

```swift

revealingSplashView.animationType = SplashAnimationType.RotateOut
```
![RotateOutAnimation](/Web/rotateAndZoomOut.gif)

### Pop and Zoom Out

Pop the view a couple of times and zoom out.

```swift

revealingSplashView.animationType = SplashAnimationType.PopAndZoomOut
```
![RotateOutAnimation](/Web/popAndZoomOut.gif)

### Squeeze and Zoom Out

Squeeze the view and zoom out.

```swift

revealingSplashView.animationType = SplashAnimationType.SqueezeAndZoomOut
```
![RotateOutAnimation](/Web/squeezeAndZoomOut.gif)

### Swing and Zoom Out

Swings the view and zoom out.

```swift

revealingSplashView.animationType = SplashAnimationType.SwingAndZoomOut
```
![RotateOutAnimation](/Web/swingAndZoomOut.gif)

### Wobble and Zoom Out

Wobbles the view and zoom out.

```swift

revealingSplashView.animationType = SplashAnimationType.WobbleAndZoomOut
```
![RotateOutAnimation](/Web/wobbleAndZoomOut.gif)

TODO
-----
* Better code coverage
* More animations

:alien: Author
------
Chris Jimenez - http://code.chrisjimenez.net, [@chrisjimeneznat](http://twitter.com/chrisjimeneznat)

## License
`RevealingSplashView` is released under the MIT license. See [LICENSE](https://github.com/pixel16/RevealingSplashView/blob/master/LICENSE) for details.
