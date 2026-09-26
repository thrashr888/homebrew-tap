class Fan < Formula
  desc "Find why Mac fans are running using actual RPM and recent CPU activity"
  homepage "https://github.com/thrashr888/fan"
  url "https://github.com/thrashr888/fan/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "32a7de6f488c8575bf72bf4a7bf0597a8735d8c6b0f70318f12051c591357a56"
  license "MIT"

  depends_on :macos

  def install
    system ENV.cc, "-std=c11", "-O2", "fan-rpm.c", "-framework", "IOKit",
                   "-framework", "CoreFoundation", "-o", "fan-rpm"
    bin.install "fan", "fan-rpm"
  end

  test do
    assert_match "fan #{version}", shell_output("#{bin}/fan -v")
    assert_match "Read fan RPM", shell_output("#{bin}/fan -h")
  end
end
