예제 프로젝트 3. Homepnwer
==================

Homepnwer는 물품 보관을 위한 프로젝트입니다.  

#### 도전 과제

* [ ] Sections
* [ ] Constant Rows
* [ ] Customizing the Table

----------------------------------------------------------------------------

### Ch10 UITableView and UITableViewController

* Beginning the Homepwner Application
* UITableViewController
    * Subclassing UITableViewController
* Creating the Item Class
    * Custom initializers
* UITableView's Data Source
    * Giving the controller access to the store
    * Implementing data source methods
* UITableViewCells
    * Creating and retrieving UITableViewCells
    * Reusing UITableViewCells
* Content Insets

#### 주요 개념

* **UITableView**
    * **UITableViewController**
        * To handle its appearance (preparation and presentation) on the screen
        * UITableViewController's view is always an instance of UITableView
    * **UITableViewDataSource** protocol
        * A UITableView asks its *data source* for 
            * the number of *rows* to display
            * the *data* to be shown in those rows
            * others that make a UITableView a useful UI
        * Required Methods
            * **tableView(_:numberOfRowsInSection:)**
                * *section*
                    * each section having its own set of rows
            * **tableView(_:cellForRowAt:)
                * **IndexPath**
                    * section property
                    * row property
    * **UITableViewDelegate** protocol
        * To inform other objects of *events* involving the UITableView
  
* **UITableViewCell**
    * A cell itself has subviews
        * contentView
        * Accessory view
            * action-oriented icon
    * UITableViewCellStyle
    * **Reuse** Table View Cell
        * every cell has a *reuseIdentifier* property of type String
            * The reuse identifier is typically the name of the *cell class*
        * **dequeueReusableCell(withIdentifier:for:)**
            * Checking the pool, or queue, of cells to see
                * If the correct reuse identifier already exists
                    * it will "dequeue" that cell
                * else
                    * A new cell will be created and returned
  
* *Convenience Initializer*
    * As helpers
    * Always calls another initializer on the same class
  
* **AppDelegate**
    * For handling the changes in state that the application goes through
    * *Dependency Inversion Principle*
        * To decouple objects in an application by inverting certain dependencies between them
            1. High-level objects should not depend on low-level objects. Both should depend on abstractions.
                * A store is a lower-level object
                * ItemTableViewController is a higher-level object
            2. Abstractions should not depend on details. Details should depend on abstractions.
  
* contentInset
    * As padding for all four sides of the scroll view
  
#### 참고 자료

> [UITableView 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/TableView_iPhone/AboutTableViewsiPhone/AboutTableViewsiPhone.html#//apple_ref/doc/uid/TP40007451)  
> [UITableViewController 관련 자료](https://developer.apple.com/documentation/uikit/uitableviewdatasource)  
> [arc4random 관련 자료](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man3/arc4random.3.html)  
> [AppDelegate 관련 자료](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html#//apple_ref/doc/uid/TP40007072-CH2-SW2)  
> [SOLID 원칙 관련 자료](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))  
> [UITableViewCell 관련 자료](https://developer.apple.com/documentation/uikit/uitableviewcell)  
> [contentInset 관련 자료](https://developer.apple.com/documentation/uikit/uiscrollview/1619406-contentinset)  

----------------------------------------------------------------------------