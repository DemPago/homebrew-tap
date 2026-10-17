class MacHealth < Formula
  desc "Check rapido delle prestazioni del Mac (RAM, swap, CPU, disco)"
  homepage "https://github.com/DemPago/mac-health"
  url "https://github.com/DemPago/mac-health/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "94f17c87246838fcd8d67b3cbf1941d61da2d0945f734330abc94691a323c6d8"
  license "MIT"

  def install
    bin.install "bin/mac-health"
  end

  test do
    assert_match "mac-health v#{version}", shell_output("#{bin}/mac-health --version")
  end
end
