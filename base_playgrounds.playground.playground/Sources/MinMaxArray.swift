public func minimum<T: Comparable>(_ comparableArray: [T]) -> T {
    var minimalValue = comparableArray[0]

    for item in comparableArray where item < minimalValue{
        minimalValue = item
    }

    return minimalValue
}

public func maximum<T: Comparable>(_ comparableArray: [T]) -> T {
    var maximumValue = comparableArray[0]

    for item in comparableArray where item > maximumValue {
        maximumValue = item
    }

    return maximumValue
}
