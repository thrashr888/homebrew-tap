class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.6.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "98bd065e56093831261530c3a3afd2bfef18bf2d6fcafb696b438508204960b0"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.6.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "053939390ddb5f6ca18206aa31ea4b0c78201e18ce965b329218ab3fcf69a848"
    end
  end

  resource "bridge" do
    url "https://github.com/thrashr888/cider/releases/download/v0.6.0/cider-bridge-0.6.0-macos-universal.tar.gz"
    sha256 "729760f5bfed5d023efba188dfe3dfade4a6767d84e3cedc6d18ba1d2ad2e3a0"
  end

  def install
    bin.install "cider"
    resource("bridge").stage do
      libexec.install "Cider Bridge.app"
      bin.install "cider-bridge"
    end
  end

  def caveats
    <<~EOS
      Cider Bridge is installed for WeatherKit, Calendar, Reminders and Contacts.
      Live HomeKit needs a personal build: cider bridge build --install
      (Xcode + Apple Developer team)
    EOS
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
