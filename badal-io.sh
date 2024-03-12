# This should be sourced from the main setup-new-computer.sh script. If it's not, we should fail

if [[ $(type -t exitscript) != function ]] && [[ "$1" != "--force" ]]; then
    echo "Must be sourced from from setup-new-computer.sh, i.e. (presuming bash shell):"
    echo "  .  setup-new-computer-script/badal-io.sh"
    echo "Use --force to override."
    exit 1
fi

printStep "Adding Hashicorp tap" "brew tap hashicorp/tap" || exitscript 1
printStep "Installing Terraform" "brew install terraform" || exitscript 1
if [[ "\$(uname -p)" == "arm" ]]; then
    printStep "Installing kubectl" 'curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl' || exitscript 1
else
    printStep "Installing kubectl" 'curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl' || exitscript 1
fi
