import Foundation

// defer is the key, it's use to execute the code end of the function. I mean once all the code execution is completed then pointer can be execute the defer statement and then exit from the function.

func useFile() {
    let file = FileHandle(forReadingAtPath: "~/temp.text")
    
    defer {
        do {
            try file?.close()
        } catch {
            fatalError("Something wrong while closing the file")
        }
    }
    
    guard let data = try? file?.readToEnd() else { return }
    
    print(data)
}

