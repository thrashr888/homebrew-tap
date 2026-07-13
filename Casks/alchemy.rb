cask "alchemy" do
  version "0.13.0"
  sha256 "726210bdf7a5063d07af1287856834ec2ec0bbfdba9f238a179f2cbf9b9cc0c6"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.13.0/Alchemy_0.13.0_aarch64.dmg"
  name "Alchemy"
  desc "Local-first research notebooks - grounded chat with your own sources"
  homepage "https://github.com/thrashr888/alchemy"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Alchemy.app"

  zap trash: [
    "~/Library/Application Support/com.thrashr888.alchemy",
    "~/Library/Preferences/com.thrashr888.alchemy.plist",
    "~/Library/Caches/com.thrashr888.alchemy",
    "~/Library/WebKit/com.thrashr888.alchemy",
  ]
end

