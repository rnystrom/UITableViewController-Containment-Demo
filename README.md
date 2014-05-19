Tables, Search Bars, Controllers, Oh My!
======================================

This project is a *really simple* example of combining [View Controller Containment](http://www.objc.io/issue-1/containment-view-controller.html) and a <code>UITableViewController</code>, all while maintaining the functionality of <code>UISearchBar</code> and <code>UISearchDisplayController</code>.

![Working Demo](https://raw.githubusercontent.com/rnystrom/UITableViewController-Containment-Demo/master/tv-vcc-searching.gif)

I've always struggled with getting this all to work properly and usually just default to having a <code>UITableViewController</code> manage everything. Doing this really limits what all you can do with your app's presentation and makes it harder to stand out from the crowd.

Thankfully, [Krzysztof Zabłocki](https://twitter.com/merowing_) ([Foldify](http://www.foldifyapp.com/) and an [awesome blog](http://www.merowing.info/)) stepped in and gave me some advice which got my gears turning.

<blockquote class="twitter-tweet" lang="en"><p><a href="https://twitter.com/_ryannystrom">@_ryannystrom</a> what about binding that to parent?</p>&mdash; Krzysztof Zabłocki (@merowing_) <a href="https://twitter.com/merowing_/statuses/468369324269649920">May 19, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Hopefully this project can help someone else who was stuck like I was, and I'm open to any contributions/suggestions!