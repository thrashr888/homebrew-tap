cask "agentkernel" do
  version "0.21.4"

  on_arm do
    sha256 "cb7678574844c4546216c1713b01fde586060125c0b7ca88f102240006c29e96"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_aarch64-arm64.dmg"
  end
  on_intel do
    sha256 "abdd59bcb142489c9be63588b76d2fc0a20f1838e14e40301d75e5ce17bf6653"
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
