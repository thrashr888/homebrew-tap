class Fan < Formula
  desc "Find why Mac fans are running using actual RPM and recent CPU activity"
  homepage "https://github.com/thrashr888/fan"
  url "https://github.com/thrashr888/fan/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "74c71cfefaa102340fe1af714b60b69e1a1b4514dd3490e020bd8bcdb7a274b3"
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
