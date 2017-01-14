public func dPrint<T>(_ object: @autoclosure () -> T, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    let value = object()
    let fileURL = NSURL(string: file)?.lastPathComponent ?? "Unknown file"
    let queue = Thread.isMainThread ? "UI" : "BG"
    print("dPrint~> <\(queue)> \(fileURL) \(function)[\(line)]: " + String(reflecting: value))
}
