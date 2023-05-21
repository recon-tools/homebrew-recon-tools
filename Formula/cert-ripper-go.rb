class CertRipperGo < Formula
  desc "Print, extract and validate TLS certificate chains for domains and URLs"
  homepage "https://github.com/recon-tools/cert-ripper-go"
  license "MIT"
  version "0.5.1"

  if Hardware::CPU.intel?
    url "https://github.com/recon-tools/cert-ripper-go/releases/download/v0.5.1/cert-ripper-0.5.1-darwin-amd64.tar.gz"
    sha256 "ee326ca164afcc54d396760bd1ddb22346848e4ef3f823a5c52bbe878c588dfb"
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
