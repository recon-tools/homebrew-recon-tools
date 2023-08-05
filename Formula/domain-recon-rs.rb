class DomainReconRs < Formula
  desc "Discover domain names based on SSL certificates."
  homepage "https://github.com/recon-tools/domain-recon-rs"
  url "https://github.com/recon-tools/domain-recon-rs/releases/download/v1.3.1/domain-recon-v1.3.1.apple-darwin.tar.gz"
  sha256 "bd3cc90294ce7ebf1b456c0cd62144ea25fc1b6cbdba5db7458c493c0e4b2547"
  license "MIT"
  version "1.3.1"

  def install
    bin.install "domain-recon"
  end

  test do
    system "#{bin}/domain-recon", "-h"
  end
end
