class MacHealth < Formula
  desc "Check rapido delle prestazioni del Mac (RAM, swap, CPU, disco)"
  homepage "https://github.com/DemPago/mac-health"
  url "https://github.com/DemPago/mac-health/archive/refs/tags/v1.5.3.tar.gz"
  sha256 "a96161dfe91840fd59d522e81a040f805ec75e75915ffc199d5cad12b9e56c1c"
  license "MIT"

  def install
    bin.install "bin/mac-health"
  end

  test do
    assert_match "mac-health v#{version}", shell_output("#{bin}/mac-health --version")
  end
end
