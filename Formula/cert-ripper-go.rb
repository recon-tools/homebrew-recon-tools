class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  license "MIT"
  version "0.5.0"

  if Hardware::CPU.intel?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.0/cert-ripper-0.5.0-darwin-amd64.tar.gz"
    sha256 "9c31de025b5e866f7586b97669e4d2922731d6c8f1287f8abcfbe7aab610992a"
  elsif Hardware::CPU.arm?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.4.2/cert-ripper-0.4.2-darwin-arm64.tar.gz"
    sha256 "64ee7b15d74c8ed69172e36ad54c0b9af9f858cac879107c89a9356b81029571"
  else
    odie "Unsupported architecture"
  end

  def install
    bin.install "bin/cert-ripper"
  end

  test do
    system "#{bin}/cert-ripper", "--help"
  end
end
