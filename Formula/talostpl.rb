class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.4"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.4/talostpl-darwin-arm64"
  sha256 "87f30b1deba45357bc9828bdd02e2e9ea36ebf9b6f2f74a9e7ecaaab9d719df8"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
