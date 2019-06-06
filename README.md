# String IANA Character Set Encoding
![Swift](https://img.shields.io/badge/Swift->=4.0-green.svg?style=flat)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![Linux](https://img.shields.io/badge/os-linux-green.svg?style=flat)
![Apache 2](https://img.shields.io/badge/license-Apache2-blue.svg?style=flat)

Adds the ability of taking an IANA encoding name and converting it into a String.Encoding object.

This package uses the CFStringConvertIANACharSetNameToEncoding and CFStringConvertEncodingToNSStringEncoding methods.

## Usage
```swift
let ianaEncodingName: String = "UTF8"
guard let encoding = String(IANACharSetName: ianaEncodingName) else { 
    throw Error.InvalidEncoding(ianaEncodingName)
}

_ = encoding.IANACharSetName
_ = encoding.noDashIANACharSetName
```
## Author
* **Tyler Anger** - *Initial work* - [TheAngryDarling](https://github.com/TheAngryDarling)

## License
This project is licensed under Apache License v2.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
Stack Overflow resposne from [rmaddy](https://stackoverflow.com/questions/44730379/how-can-i-convert-a-string-such-as-iso-8859-1-to-its-string-encoding-counte)
Patch for swift retain on swift versions 4.0, 4.1 provided on Swift Bugs by [Knock YOCKOW ](https://bugs.swift.org/browse/SR-5986)
