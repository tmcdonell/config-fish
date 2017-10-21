function __fish_using_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq (count $argv) ]
        for i in (seq (count $argv))
            if [ $cmd[$i] != $argv[$i] ]
                return 1
            end
        end
        return 0
    end
    return 1
end

complete -c rustup -n "__fish_using_command rustup" -s v -l verbose -d "Enable verbose output"
complete -c rustup -n "__fish_using_command rustup" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup" -f -a "show" -d "Show the active and installed toolchains"
complete -c rustup -n "__fish_using_command rustup" -f -a "install" -d "Update Rust toolchains"
complete -c rustup -n "__fish_using_command rustup" -f -a "uninstall" -d "Uninstall Rust toolchains"
complete -c rustup -n "__fish_using_command rustup" -f -a "update" -d "Update Rust toolchains and rustup"
complete -c rustup -n "__fish_using_command rustup" -f -a "default" -d "Set the default toolchain"
complete -c rustup -n "__fish_using_command rustup" -f -a "toolchain" -d "Modify or query the installed toolchains"
complete -c rustup -n "__fish_using_command rustup" -f -a "target" -d "Modify a toolchain's supported targets"
complete -c rustup -n "__fish_using_command rustup" -f -a "component" -d "Modify a toolchain's installed components"
complete -c rustup -n "__fish_using_command rustup" -f -a "override" -d "Modify directory toolchain overrides"
complete -c rustup -n "__fish_using_command rustup" -f -a "run" -d "Run a command with an environment configured for a given toolchain"
complete -c rustup -n "__fish_using_command rustup" -f -a "which" -d "Display which binary will be run for a given command"
complete -c rustup -n "__fish_using_command rustup" -f -a "doc" -d "Open the documentation for the current toolchain"
complete -c rustup -n "__fish_using_command rustup" -f -a "man" -d "View the man page for a given command"
complete -c rustup -n "__fish_using_command rustup" -f -a "self" -d "Modify the rustup installation"
complete -c rustup -n "__fish_using_command rustup" -f -a "telemetry" -d "rustup telemetry commands"
complete -c rustup -n "__fish_using_command rustup" -f -a "set" -d "Alter rustup settings"
complete -c rustup -n "__fish_using_command rustup" -f -a "completions" -d "Generate completion scripts for your shell"
complete -c rustup -n "__fish_using_command rustup" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup show" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup show" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup install" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup install" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup uninstall" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup uninstall" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup update" -l no-self-update -d "Don't perform self update when running the `rustup` command"
complete -c rustup -n "__fish_using_command rustup update" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup update" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup default" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup default" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain" -f -a "list" -d "List installed toolchains"
complete -c rustup -n "__fish_using_command rustup toolchain" -f -a "install" -d "Install or update a given toolchain"
complete -c rustup -n "__fish_using_command rustup toolchain" -f -a "uninstall" -d "Uninstall a toolchain"
complete -c rustup -n "__fish_using_command rustup toolchain" -f -a "link" -d "Create a custom toolchain by symlinking to a directory"
complete -c rustup -n "__fish_using_command rustup toolchain" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup toolchain list" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain list" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain install" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain install" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain uninstall" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain uninstall" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain link" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain link" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup toolchain help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup toolchain help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup target" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup target" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup target" -f -a "list" -d "List installed and available targets"
complete -c rustup -n "__fish_using_command rustup target" -f -a "add" -d "Add a target to a Rust toolchain"
complete -c rustup -n "__fish_using_command rustup target" -f -a "remove" -d "Remove a target from a Rust toolchain"
complete -c rustup -n "__fish_using_command rustup target" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup target list" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup target list" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup target list" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup target add" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup target add" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup target add" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup target remove" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup target remove" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup target remove" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup target help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup target help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup component" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup component" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup component" -f -a "list" -d "List installed and available components"
complete -c rustup -n "__fish_using_command rustup component" -f -a "add" -d "Add a component to a Rust toolchain"
complete -c rustup -n "__fish_using_command rustup component" -f -a "remove" -d "Remove a component from a Rust toolchain"
complete -c rustup -n "__fish_using_command rustup component" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup component list" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup component list" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup component list" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup component add" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup component add" -l target
complete -c rustup -n "__fish_using_command rustup component add" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup component add" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup component remove" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup component remove" -l target
complete -c rustup -n "__fish_using_command rustup component remove" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup component remove" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup component help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup component help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup override" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup override" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup override" -f -a "list" -d "List directory toolchain overrides"
complete -c rustup -n "__fish_using_command rustup override" -f -a "set" -d "Set the override toolchain for a directory"
complete -c rustup -n "__fish_using_command rustup override" -f -a "unset" -d "Remove the override toolchain for a directory"
complete -c rustup -n "__fish_using_command rustup override" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup override list" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup override list" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup override set" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup override set" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup override unset" -l path -d "Path to the directory"
complete -c rustup -n "__fish_using_command rustup override unset" -l nonexistent -d "Remove override toolchain for all nonexistent directories"
complete -c rustup -n "__fish_using_command rustup override unset" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup override unset" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup override help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup override help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup run" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup run" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup which" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup which" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup doc" -l book -d "The Rust Programming Language book"
complete -c rustup -n "__fish_using_command rustup doc" -l std -d "Standard library API documentation"
complete -c rustup -n "__fish_using_command rustup doc" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup doc" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup man" -l toolchain -d "Toolchain name, such as 'stable', 'nightly', or '1.8.0'. For more information see `rustup help toolchain`"
complete -c rustup -n "__fish_using_command rustup man" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup man" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup self" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup self" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup self" -f -a "update" -d "Download and install updates to rustup"
complete -c rustup -n "__fish_using_command rustup self" -f -a "uninstall" -d "Uninstall rustup."
complete -c rustup -n "__fish_using_command rustup self" -f -a "upgrade-data" -d "Upgrade the internal data format."
complete -c rustup -n "__fish_using_command rustup self" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup self update" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup self update" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup self uninstall" -s y
complete -c rustup -n "__fish_using_command rustup self uninstall" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup self uninstall" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup self upgrade-data" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup self upgrade-data" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup self help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup self help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup telemetry" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup telemetry" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup telemetry" -f -a "enable" -d "Enable rustup telemetry"
complete -c rustup -n "__fish_using_command rustup telemetry" -f -a "disable" -d "Disable rustup telemetry"
complete -c rustup -n "__fish_using_command rustup telemetry" -f -a "analyze" -d "Analyze stored telemetry"
complete -c rustup -n "__fish_using_command rustup telemetry" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup telemetry enable" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup telemetry enable" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup telemetry disable" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup telemetry disable" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup telemetry analyze" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup telemetry analyze" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup telemetry help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup telemetry help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup set" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup set" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup set" -f -a "default-host" -d "The triple used to identify toolchains when not specified"
complete -c rustup -n "__fish_using_command rustup set" -f -a "help" -d "Prints this message or the help of the given subcommand(s)"
complete -c rustup -n "__fish_using_command rustup set default-host" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup set default-host" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup set help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup set help" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup completions" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup completions" -s V -l version -d "Prints version information"
complete -c rustup -n "__fish_using_command rustup help" -s h -l help -d "Prints help information"
complete -c rustup -n "__fish_using_command rustup help" -s V -l version -d "Prints version information"
