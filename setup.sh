


install_tool() {
  if [ $# != 3 ]; then
    echo "Incorrect number of arguments"
    echo "Usage: install_tool(<tool name> <tool path> <command to install>"
  fi

  name=$1
  tool=$2
  install_cmd=$3

  if ! [ -x "$(command -v ${tool})" ]; then
    echo "Installing ${name}..."
    eval ${install_cmd}
  else
    echo "${name} already installed. skipping..."
  fi

  echo ""
}

install_app() {
  if [ $# != 2 ]; then
    echo "Incorrect number of arguments"
    echo "Usage: install_app(<app name> <url>"
  fi

  name=$1
  url=$2

  if [ -d "/Applications/${name}.app" ]; then
    echo "${name} already installed. skipping..."
  else
    echo "${name} can be found at ${url}."
    read -p "Hit [enter] to when you are ready to continue."
  fi

  echo ""
}

install_tool "homebrew" "brew" '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
install_tool "developer tools" "gcc" "xcode-select --install"
install_app "Dash", "https://kapeli.com/dash"

brew install wget
