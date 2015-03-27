# CJAirDropActivityViewController
A subclass of UIActivityViewController where AirDrop is the only sharing option. See [http://cjoseph.com/post/114784061214](http://cjoseph.com/post/114784061214/how-to-display-an-ios-share-sheet-with-just-airdrop) for a little bit more about how this came together. And rememeber: this sort of trick should really be a last resort, and could potentially break with any system update. Use it at your own risk.

<center><img src="http://40.media.tumblr.com/17011232cb567d87cce945357904cb14/tumblr_nlw1puo0I61qk9xn9o1_1280.jpg" height="185"/></center>

Note: currently the end result is only sized for the iPhone, and you may want to add handling for devices that don’t support AirDrop before showing the share sheet.
