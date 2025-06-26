class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.3"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.3/talostpl-darwin-amd64"
  sha256 "1d48143bcc8e26641b2ffb04149ff8c35badfc3936c770180aa2abe0e4d63ee6"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
