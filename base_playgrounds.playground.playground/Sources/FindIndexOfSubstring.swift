public extension String {
    
    func indexOf(search substring: String) throws -> Int{
        
        if (self.count < substring.count){
            throw StringError.differenceBetweenLength(
                "Length between \(self) and \(substring) is different")
        }
        
        let substringLength = substring.count
        
        for startIndex in (0 ... count - substringLength) {

            let startIndex = index(self.startIndex, offsetBy: startIndex)
            let endIndex = index(startIndex, offsetBy: substringLength)
            
            let subword = self[startIndex ..< endIndex]
            
            print(subword)
            if (subword == substring){
                return distance(from: self.startIndex, to: startIndex)
            }
        }
        
        return -1
    }
}


public enum StringError: Error {
    case differenceBetweenLength(String)
}
