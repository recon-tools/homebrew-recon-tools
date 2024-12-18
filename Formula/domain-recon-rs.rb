class DomainReconRs < Formula
  desc "Discover domain names based on SSL certificates."
  homepage "https://github.com/recon-tools/domain-recon-rs"
  url "https://github.com/recon-tools/domain-recon-rs/releases/download/v1.3.2/domain-recon-v1.3.2.apple-darwin.tar.gz"
  sha256 "37a32585e3a945d6124468ad5609e7a4b088476f649c5783a80221641b4f35fb"
  license "MIT"
  version "1.3.2"

  def install
    bin.install "domain-recon"
  end

  test do
    system "#{bin}/domain-recon", "-h"
  end
end
