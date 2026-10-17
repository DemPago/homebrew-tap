class MacHealth < Formula
  desc "Check rapido delle prestazioni del Mac (RAM, swap, CPU, disco)"
  homepage "https://github.com/DemPago/mac-health"
  url "https://github.com/DemPago/mac-health/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "a0160fe2e23a2da056d098a5f40d67fde5878a4c636353047b7f22fea2cff907"
  license "MIT"

  def install
    bin.install "bin/mac-health"
  end

  test do
    assert_match "mac-health v#{version}", shell_output("#{bin}/mac-health --version")
  end
end
