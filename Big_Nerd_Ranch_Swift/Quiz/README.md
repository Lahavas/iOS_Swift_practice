예제 프로젝트 1. Quiz
==================

Quiz는 간단한 퀴즈 게임 프로젝트입니다.  

#### 도전 과제

* [ ] Spring Animations
* [ ] Layout Guides

----------------------------------------------------------------------------

### Ch01 A Simple iOS Application

* Creating an Xcode Project
* Model-View-Controller
* Designing Quiz
* Interface Builder
* Building the Interface
    * Creating view objects
    * Configuring view objects
    * Running on the simulator
    * A brief introduction to Auto Layout
    * Making connections
        * Declaring outlets
        * Setting outlets
        * Defining action methods
        * Setting targets and actions
        * Summary of connections
* Creating the Model Layer
    * Implementing action methods
    * Loading the first question
* Building the Finished Application
* Application Icons
* Launch Screen

#### 주요 개념

* Interface Builder
    * Graphic-style **Object editor**
  
* Auto Layout
    * Calculating position and size constraints for each **View Object**
  
* Connection
    * **Outlet** (a reference to an object) and **Action** (a method that gets triggered by **Target** object)
  
#### 참고 자료

> [XCode and Interface Builder 관련 자료](http://help.apple.com/xcode/mac/9.0/#/)  
> [App Icons and Launch Screen 관련 자료](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/ExpectedAppBehaviors/ExpectedAppBehaviors.html#//apple_ref/doc/uid/TP40007072-CH3-SW9)

----------------------------------------------------------------------------

### Ch08 Controlling Animations

* Basic Animations
    * Closures
* Another Label
* Animation Completion
* Animating Constraints
* Timing Functions

#### 주요 개념

* **animate(withDuration:delay:options:animations:completion:)**
    * Animation Completion
    * Timing Functions
        * **UIViewAnimationOptions**
        * default: ease-in/ease-out
        * others: linear, curveLinear, etc.
  
* **layoutIfNeeded()**
    * This method will force the view to lay out its subview based on the *lastest constraints*
  
#### 참고 자료

> [UIView 관련 자료](https://developer.apple.com/documentation/uikit/uiview)  
> [Animation 관련 자료](https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/AnimatingViews/AnimatingViews.html)  
> [layoutIfNeeded 관련 자료](https://developer.apple.com/documentation/uikit/uiview/1622507-layoutifneeded)  