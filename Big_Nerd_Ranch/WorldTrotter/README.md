예제 프로젝트 2. WorldTrotter
==========================

WorldTrotter는 Localization이 적용된 온도 변환기 프로젝트입니다.  

----------------------------------------------------------------------------

### Ch03 Views and the View Hierarchy

* View Basics
* The View Hierarchy
* Creating a New Project
* Views and Frames
    * Customizing the labels
* The Auto Layout System
    * The alignment rectangle and layout attributes
    * Constraints
    * Adding constraints in Interface Builder
    * Intrinsic content size
    * Misplaced views
    * Adding more constraints

#### 주요 개념

* View Hierarchy
    *  Hierarchy of view objects with the **Window** (instance of UIWindow) at its root
        1. Views render themselves (to its **Layer** (instance of CALayer))
        2. Views are Composited together
  
* **Frame**
    * Instance of CGRect
        1. Origin
            * view's position (CGPoint: x and y)
        2. Size
            * view's size (CGSize: width and height)
  
* Point
    * relative unit of a measure
  
* Auto Layout System
    * **alignment rectangle**
    * Constraints
        * how to find a view's *nearest neighbor*
        * **Instrinsic content size**
            * The size that a view wants to be
  
#### 참고 자료

> [View Programming 관련 자료](https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009503-CH1-SW2)  
> [Auto Layout 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/index.html#//apple_ref/doc/uid/TP40010853)  

----------------------------------------------------------------------------

### Ch04 Text Input and Delegation

* Text Editing
    * keyboard attributes
    * Responding to text field changes
    * Dismissing the keyboard
* Implementing the Temperature Conversion
    * Number formatters
* Delegation
    * Conforming to a protocol
    * Using a delegate
    * More on protocols

#### 주요 개념

* Keyboard
    * The keyboard's appearance is determined by **UITextInputTraits**
  
* Formatter
    * number, date, energy, mass, length, measurements, and more
  
* **Delegation**
    * Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type.
    * Delegation is an object-oriented approach to *callbacks*
        * Callback is a function that is supplied in advance of an event and is called every time the event occurs
    * You supply a single *delegate* to receive all of the event-related callbacks for a particular object.
        * This delegate object can store, manipulate, act on, and relay the information from the callbacks as it sees fit.
  
* UITextFieldDelegate protocol
    * Two kinds of methods
        * methods that handle information updates
            * textFieldDidBeginEditing(_:), ...
        * methods that handle requests for input
            * textField(_:shouldChangeCharactersIn:replacementString:)
                * The method returns a Bool, which is the delegates answer
  
#### 참고 자료

> [UITextInputTraits 관련 자료](https://developer.apple.com/documentation/uikit/uitextinputtraits)  
> [Measurement 관련 자료](https://developer.apple.com/documentation/foundation/measurement)  
> [Delegation 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html)

----------------------------------------------------------------------------

### Ch05 View Controllers

* The View of a View Controller
* Setting the Initial View Controller
* UITabBarController
    * Tab bar items
* Loaded and Appearing Views
    * Accessing subviews
* Interacting with View Controllers and Their Views
* For the More Curious: Retina Display

#### 주요 개념

* **View Controller**
    * Creating **view objects** that make up the **hierarchy**
    * Handling **events** associated with the view objects in its hierarchy
  
* The View of a View Controller
    * All view controllers inherit **View**
        * **lazy loading**
    * Two way of create view hierarchy
        * Interface Builder
        * loadView()
  
* How work with the root level **UIWindow** to add the initial view controller's view to the window hierarchy.
    * UIWindow has a *rootViewController* property
        * rootViewController's view gets added to the window's view hierarchy
    * When this property is set
        * Any existing subview's on the window are removed
        * View controller's view gets add to the window with the appropriate Auto Layout constraints
    * Each application has one *main interface*
  
* UITabBarController
    * Keeping an array of view controllers
    * Maintaining a tab bar at the bottom of the screen with a tab for each view controller in its array
    * UITabBarController's view is a UIView with two subviews
        * The tab bar
        * The view of the selected view controller
    * **tabBarItem** property
  
* **Assets.xcassets**
    * An *asset* is a set of files
        * A single file will be selected at runtime based on the **user's device configuration**
  
* The lifecycle of a view controller and its view
    * **init(coder:)**
        * The initializer for UIViewController instances created from a storyboard
        * When a view controller instance is created from a storyboard, its **init(coder:)** gets called once
    * **init(nibName:bundle:)**
        * The designated initializer for UIViewController
        * When a view controller instance is created without the use of a storyboard, its **init(nibName:bundle:)** gets called once
    * **loadView()**
        * To create a view controller's view programmatically
    * **viewDidLoad()**
        * To configure views created by loading an interface file
        * This method gets called after the view of a view controller is created
    * **viewWillAppear(_:)**
        * To configure views created by loading an interface file
        * This method and **viewDidAppear(_:)** get called every time your view controller is moved onscreen
        * **viewWillDisappear(\_:)** and **viewDidDisappear(_:)** get called every time your view controller is moved offscreen
  
* Retina Display
    * Vector Graphics
    * In Core Graphics (also called Quartz), lines, curves, text, etc. are described in terms of **points**
        * non-Retina display (1 point = 1x1 pixel)
        * Retina display (1 point = 2x2 pixel)
        * higher-resolution Retina display (1 point = 3x3 pixel)
  
#### 참고 자료

> [View Controller 관련 자료](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/)  
> [MapKit framework 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/LocationAwarenessPG/MapKit/MapKit.html)  
> [UITabBarController 관련 자료](https://developer.apple.com/documentation/uikit/uitabbarcontroller)  
> [Assets 관련 자료](https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/)  
> [UIViewController Lifecycle 관련 자료](https://developer.apple.com/documentation/uikit/uiviewcontroller)  

----------------------------------------------------------------------------

### Ch06 Programmatic Views

* Creating a View Programmatically
* Programmatic Constraints
    * Anchors
    * Activating constraints
    * Layout guides
    * Margins
    * Explicit constraints
* Programmatic Controls
* For the More Curious: NSAutoresizingMaskLayoutConstraint

#### 주요 개념



----------------------------------------------------------------------------

### Ch07 Localization

* Internationalization
    * Formatters
    * Base internationalization
    * Preparing for localization
* Localization
    * NSLocalizedString and strings tables
* For the More Curious: Bundle's Role in Internationalization
* For the More Curious: Inporting and Exporting as XLIFF