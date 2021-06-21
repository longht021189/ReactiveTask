import Foundation

open class TaskOverrider {
    private static var instanceTaskOverrider = TaskOverrider()
    
    open func getLaunchPath(_ task: Task) -> String {
        return task.launchPath
    }
    
    open func getArguments(_ task: Task) -> [String] {
        return task.arguments
    }
    
    open func getWorkingDirectoryPath(_ task: Task) -> String? {
        return task.workingDirectoryPath
    }
    
    open func getEnvironment(_ task: Task) -> [String: String]? {
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
