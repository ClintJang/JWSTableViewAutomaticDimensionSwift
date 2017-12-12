# JWSTableViewAutomaticDimensionSwift
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 4](https://img.shields.io/badge/objective-Apple-orange.svg?style=flat)](https://swift.org) [![Twitter: @clintjang](https://img.shields.io/badge/Contact-Twitter-blue.svg?style=flat)](https://twitter.com/clintjang)

## Description
Just TableView UITableViewAutomaticDimension Sample...
(UITableViewAutomaticDimension is used to check whether the Cell UI is well reflected.)

# Info
## Result Image

<img width="325" height="667" src="/Image/sample01.gif"></img>

## Source
- ViewController.swift
<pre><code>

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Self-Sizing Table View Cells 
        // These two lines of code will dynamically render the cell size.
        // These two lines of code will dynamically render the cell size.
        // estimatedRowHeight : Setting the expected value, Default 0, but setting it to 1 causes an error. Let it be 2 or more
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

</code></pre>
