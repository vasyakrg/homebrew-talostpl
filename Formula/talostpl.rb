class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.5"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.5/talostpl-darwin-arm64"
  sha256 "a4ebf148959eff3cefa13c66e162fe2713ef58d26deb4b421cf91343ca85bbc2"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
