import Foundation
import CoreFoundation

fileprivate extension String {
    var cf: CFString {
        let chars = Array(self.utf16)
        let cfStr = CFStringCreateWithCharacters(nil, chars, self.utf16.count)
        let str = CFStringCreateCopy(nil, cfStr)!
        return str
    }
    
    var mcf: CFMutableString {
        let chars = Array(self.utf16)
        let cfStr = CFStringCreateWithCharacters(nil, chars, self.utf16.count)
        let str = CFStringCreateMutableCopy(nil, 0, cfStr)!
        return str
    }
}

public extension String.Encoding {
    
    // The IANA Character Set name for this encoding
   public var charSetName: String {
        guard self.rawValue != 1 else { return "ascii" } //Standardize ASCII
    
        let se = CFStringConvertNSStringEncodingToEncoding(self.rawValue)
        let cfe = CFStringConvertEncodingToIANACharSetName(se)
        return String(describing: cfe)
        
    }
    // The IANA Character Set name for this encoding with dashes removed
    public var noDashCharSetName: String {
        return self.charSetName.replacingOccurrences(of: "-", with: "")
    }
    
    // Create String.Encoding based in IANA Character Set
    public init?(charSetName name: String) {
        // https://stackoverflow.com/questions/44730379/how-can-i-convert-a-string-such-as-iso-8859-1-to-its-string-encoding-counte
        let cfe = CFStringConvertIANACharSetNameToEncoding(name.cf)
        if cfe == kCFStringEncodingInvalidId { return nil }
        let se = CFStringConvertEncodingToNSStringEncoding(cfe)
        
        self.init(rawValue: se)
    }
}
