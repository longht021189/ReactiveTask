import Foundation

open class TaskOverrider {
    private static var instanceTaskOverrider = TaskOverrider()
    
    public init() {}
    
    open func getLaunchPath(_ process: Process, _ task: Task) -> String {
        return task.launchPath
    }
    
    open func getArguments(_ process: Process, _ task: Task) -> [String] {
        return task.arguments
    }
    
    open func getWorkingDirectoryPath(_ process: Process, _ task: Task) -> String? {
        return task.workingDirectoryPath
    }
    
    open func getEnvironment(_ process: Process, _ task: Task) -> [String: String]? {
        return task.environment
    }
}

extension TaskOverrider {
    public static func setInstance(_ instance: TaskOverrider) {
        instanceTaskOverrider = instance
    }
    
    static func getInstance() -> TaskOverrider {
        return instanceTaskOverrider
    }
}
