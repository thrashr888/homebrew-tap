cask "agentkernel" do
  version "0.20.0"

  on_arm do
    sha256 "38eaa575f2c803816bac7debfeb7f1c777740da6e57abfb33c185c8b95167367"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_aarch64-arm64.dmg"
  end
  on_intel do
    sha256 "7a44c560b04091dda4727ebb23053978ec656329e0ea7634f5926fe6173d47fa"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_x64-x64.dmg"
  end

  name "AgentKernel"
  desc "Desktop app for managing AI coding agent sandboxes"
  homepage "https://thrashr888.github.io/agentkernel/"

  depends_on macos: :ventura

  app "AgentKernel.app"

  zap trash: [
    "~/Library/Application Support/com.agentkernel.desktop",
    "~/Library/Caches/com.agentkernel.desktop",
  ]
end
