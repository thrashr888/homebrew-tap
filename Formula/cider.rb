class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.6.1/cider-aarch64-apple-darwin.tar.gz"
      sha256 "f6b4818a8039fc681800772f1118118e4e9db6e328e2c7b6eb8ef6fbc0200196"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.6.1/cider-x86_64-apple-darwin.tar.gz"
      sha256 "b90469a691f658338b517ad4e2f70768ffcb77885ec6c36ce65a510949c470c6"
    end
  end

  resource "bridge" do
    url "https://github.com/thrashr888/cider/releases/download/v0.6.1/cider-bridge-0.6.1-macos-universal.tar.gz"
    sha256 "d9658e5f06aafd50b9c24d3b4399711606993a1f0c6e0eb422ee891698c02b96"
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
