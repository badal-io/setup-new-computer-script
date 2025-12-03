# Google Cloud Components
```sh
brew install --cask google-cloud-sdk
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"
if [ -e ~/google-cloud-sdk ]; then
    echo "✔ ~/google-cloud-sdk exists. Skipping"
else
    echo "✔ Creating ~/google-cloud-sdk symlink"
    ln -s "$(brew --prefix)/Caskroom/google-cloud-sdk" ~/google-cloud-sdk &>/dev/null
    # make a convenience symlink at the install path for google-cloud-sdk when installed manually
fi
gcloud components install app-engine-go --quiet
gcloud components install app-engine-python --quiet
gcloud components install app-engine-python-extras --quiet
gcloud components install kubectl --quiet
gcloud components install docker-credential-gcr --quiet
```
