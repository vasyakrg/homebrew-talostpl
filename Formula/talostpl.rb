class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.0"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.0/talostpl-darwin-arm64"
  sha256 "808d5b2089b85b45c829c64065e2e5b7b2a85549e0971a82c5e92d5d0563a3bb"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
