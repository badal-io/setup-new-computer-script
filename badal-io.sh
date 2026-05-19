# This should be sourced from the main setup-new-computer.sh script. If it's not, we should fail

if [[ $(type -t exitscript) != function ]] && [[ "$1" != "--force" ]]; then
	echo "Must be sourced from from setup-new-computer.sh, i.e. (presuming bash shell):"
	echo "  .  setup-new-computer-script/badal-io.sh"
	echo "Use --force to override."
	exit 1
fi

printStep "Hashicorp tap" "brew tap hashicorp/tap" || exitscript 1
printStep "Terraform" "brew install terraform" || exitscript 1
printStep "Vault CLI" "brew install vault-cli" || exitscript 1
#if [[ "\$(uname -p)" == "arm" ]]; then
#    printStep "Installing kubectl" 'curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl' || exitscript 1
#else
#    printStep "Installing kubectl" 'curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl' || exitscript 1
#fi

#-------------------------------------------------------------------------------
# TELUS AI Plugins (telus/ai-plugins) — delegated install via telus-setup.sh.
# telus-setup.sh handles Claude Code detection, marketplace registration, and
# required/recommended plugin install in one flow. We've already installed
# Claude Code via brew in the main script; telus-setup will detect it and
# offer "Update" mode (additive, non-destructive).
#-------------------------------------------------------------------------------

printHeading "TELUS AI Plugins (via telus/ai-dev → telus-setup.sh)"
printDivider

TELUS_SETUP_DIR="${TMPDIR:-/tmp}/telus-ai-setup-$$"
TELUS_SETUP_URL="https://github.com/telus/ai-dev.git"

# telus/ai-dev is a private/internal repo; require gh auth or SSH access.
if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
	echo "✔ Using gh to clone telus/ai-dev"
	gh repo clone telus/ai-dev "$TELUS_SETUP_DIR" -- --depth 1 ||
		{
			echo "⚠ Could not clone telus/ai-dev — skipping. Run \`gh auth login\` then re-run this script."
			TELUS_SETUP_DIR=""
		}
elif command -v git >/dev/null 2>&1; then
	git clone --depth 1 git@github.com:telus/ai-dev.git "$TELUS_SETUP_DIR" 2>/dev/null ||
		git clone --depth 1 "$TELUS_SETUP_URL" "$TELUS_SETUP_DIR" ||
		{
			echo "⚠ Could not clone telus/ai-dev — skipping. Authenticate to GitHub (gh auth login or SSH key) then re-run this script."
			TELUS_SETUP_DIR=""
		}
else
	echo "⚠ Neither gh nor git found — cannot fetch telus/ai-dev. Skipping AI plugins install."
	TELUS_SETUP_DIR=""
fi

if [[ -n "$TELUS_SETUP_DIR" && -x "$TELUS_SETUP_DIR/tools/claude-code/telus-setup.sh" ]]; then
	printDivider
	echo "✔ Running telus-setup.sh --install-desktop"
	# --install-desktop ensures Claude Desktop is installed alongside Claude Code on macOS.
	bash "$TELUS_SETUP_DIR/tools/claude-code/telus-setup.sh" --install-desktop ||
		printError "telus-setup.sh exited non-zero"
	# Clean up the clone; telus-setup persists its config under ~/.claude.
	rm -rf "$TELUS_SETUP_DIR"
elif [[ -n "$TELUS_SETUP_DIR" ]]; then
	echo "⚠ telus-setup.sh not found at expected path. The repo layout may have changed."
	rm -rf "$TELUS_SETUP_DIR"
fi
printDivider
