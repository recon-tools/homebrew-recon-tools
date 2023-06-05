class DomainReconRs < Formula
  desc "Discover domain names based on SSL certificates."
  homepage "https://github.com/recon-tools/domain-recon-rs"
  url "https://github.com/recon-tools/domain-recon-rs/releases/download/v1.3.0/domain-recon-v1.3.0.apple-darwin.tar.gz"
  sha256 "e055d921bc4d658c208b684dc05de670f3f482ed3bab8c7775c15c81d6a87312"
  license "MIT"
  version "1.3.0"

  def install
    bin.install "domain-recon"
  end

  test do
    system "#{bin}/domain-recon", "-h"
  end
end
