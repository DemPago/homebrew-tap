class MacHealth < Formula
  desc "Check rapido delle prestazioni del Mac (RAM, swap, CPU, disco)"
  homepage "https://github.com/DemPago/mac-health"
  url "https://github.com/DemPago/mac-health/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "da730f3816900ddaca3a50425177978a7615320e1fc1a6aa81478aa61046e532"
  license "MIT"

  def install
    bin.install "bin/mac-health"
  end

  test do
    assert_match "mac-health v#{version}", shell_output("#{bin}/mac-health --version")
  end
end
