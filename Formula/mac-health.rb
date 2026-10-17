class MacHealth < Formula
  desc "Check rapido delle prestazioni del Mac (RAM, swap, CPU, disco)"
  homepage "https://github.com/DemPago/mac-health"
  url "https://github.com/DemPago/mac-health/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "3d65bfacad3233d6d654209cea6fc6474de124e6c83aa94269707802d169080b"
  license "MIT"

  def install
    bin.install "bin/mac-health"
  end

  test do
    assert_match "mac-health v#{version}", shell_output("#{bin}/mac-health --version")
  end
end
