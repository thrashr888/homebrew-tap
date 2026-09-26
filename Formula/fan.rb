class Fan < Formula
  desc "Find why Mac fans are running using actual RPM and recent CPU activity"
  homepage "https://github.com/thrashr888/fan"
  url "https://github.com/thrashr888/fan/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "472835379be6b28c8af14075d8a8ca5725d192cd776351787f53076d0c17a005"
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
