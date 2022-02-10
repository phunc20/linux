#OS="Darwin"
#OS="Linux"
#OS="Windows"
OS=$(uname)

case $OS in
    Darwin)
        num_CPUs=$(sysctl -n hw.ncpu)
        ;;
    Linux)
        num_CPUs=$(lscpu | grep "^CPU(s)" | awk '{print $2}')
        ;;
    *)
        echo "OS other than Linux and MacOS are not supported."
        exit 1
        ;;
esac

echo "num_CPUs = ${num_CPUs}"
