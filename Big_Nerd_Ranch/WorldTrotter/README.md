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
* Delegation
    * Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type.
    * Delegation is an object-oriented approach to *callbacks*
        * Callback is a function that is supplied in advance of an event and is called every time the event occurs
    * You supply a single *delegate* to receive all of the event-related callbacks for a particular object.
        * This delegate object can store, manipulate, act on, and relay the information from the callbacks as it sees fit.

#### 참고 자료

> [UITextInputTraits 관련 자료](https://developer.apple.com/documentation/uikit/uitextinputtraits)  
> [Measurement 관련 자료](https://developer.apple.com/documentation/foundation/measurement)  
> Delegation 관련 자료: Cocoa Fundamentals Guide / The Swift Programming Language 참고

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