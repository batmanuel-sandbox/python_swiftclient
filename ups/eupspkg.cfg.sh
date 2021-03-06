_MODULE="python-swiftclient"
_VERSION="3.3.0"

config()
{
    # Verify that a compatible module can be found exists
    ./scripts/check_python_module -v $_MODULE $_VERSION | eups_console

    if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
        die "Failed to find a compatible externally provided $_MODULE."
    fi
}

prep() { :; }
build() { :; }
