class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.8"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.8/talostpl-darwin-arm64"
  sha256 "f5d2068f1ee7d75907be4cda15942337d9a65127ab5d500b6f4f4965bdc694f0"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
