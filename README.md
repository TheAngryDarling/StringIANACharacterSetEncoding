# String IANA Character Set Encoding
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![Linux](https://img.shields.io/badge/os-linux-green.svg?style=flat)
![Apache 2](https://img.shields.io/badge/license-Apache2-blue.svg?style=flat)

Adds the ability of taking an encoding name and converting it into a String.Encoding object.

On the Mac platforms this package uses the CFStringConvertIANACharSetNameToEncoding and CFStringConvertEncodingToNSStringEncoding methods.  
On other platforms this packages uses a static dictionary of names to encoding values

## Usage
```
let ianaEncodingName: String = "UTF8"
guard let encoding = String(charSetName: ianaEncodingName) else { 
    throw Error.InvalidEncoding(ianaEncodingName)
}

_ = encoding.charSetName
_ = encoding.noDashCharSetName
```
## Author

* **Tyler Anger** - *Initial work* - [TheAngryDarling](https://github.com/TheAngryDarling)

## License

This project is licensed under Apache License v2.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
Stack Overflow resposne from [rmaddy](https://stackoverflow.com/questions/44730379/how-can-i-convert-a-string-such-as-iso-8859-1-to-its-string-encoding-counte)
