cask "agentkernel" do
  version "0.21.2"

  on_arm do
    sha256 "104e5b9e3f9a0bfe83d4f250f75c20f81b4d614ced71ec910eedd8cec5f28a8d"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_aarch64-arm64.dmg"
  end
  on_intel do
    sha256 "832860532797e51cef977ae92de190dffb689d0787092c02f24ccd18a36f9806"
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
