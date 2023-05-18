class DomainReconRs < Formula
  desc "Discover domain names based on SSL certificates."
  homepage "https://github.com/recon-tools/domain-recon-rs"
  url "https://github.com/recon-tools/domain-recon-rs/releases/download/v1.2.2/domain-recon-v1.2.2.apple-darwin.tar.gz"
  sha256 "c4c34eb858dd16768c70f5dc42744e303408eb838112b8eb2155ce7a217a623b"
  license "MIT"
  version "1.2.2"

  def install
    bin.install "domain-recon"
  end

  test do
    system "#{bin}/domain-recon", "-h"
  end
end
