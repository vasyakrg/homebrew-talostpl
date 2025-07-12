class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.2"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.2/talostpl-darwin-arm64"
  sha256 "c702113cc6b5d94b16663fe93c5b3b8ab1ed402fbe9e31e8f17a6be76065a269"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
