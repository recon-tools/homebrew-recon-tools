class DomainReconRs < Formula
  desc "Discover domain names based on SSL certificates."
  homepage "https://github.com/recon-tools/domain-recon-rs"
  url "https://github.com/recon-tools/domain-recon-rs/releases/download/v1.1.0/domain-recon-v1.1.0.apple-darwin.tar.gz"
  sha256 "2768e8cd0ae45c97588fbb8fda8d8127be530fb83ab0ed18ad59ad32a23ccd27"
  license "MIT"
  version "1.1.0"

  def install
    bin.install "domain-recon"
  end

  test do
    system "#{bin}/domain-recon", "-h"
  end
end
