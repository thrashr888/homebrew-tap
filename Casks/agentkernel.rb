cask "agentkernel" do
  version "0.19.0"

  on_arm do
    sha256 "a0e28a187a619fc873bec89b5bbbbddc62b90ccc8b5c5ed011c099d3aa14fe30"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_aarch64-arm64.dmg"
  end
  on_intel do
    sha256 "114530b24900af9849ec9ddce597bfe3b0760ee0a415c98dfac9f80c8dfe672b"
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
