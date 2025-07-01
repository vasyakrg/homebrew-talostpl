class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.7"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.7/talostpl-darwin-arm64"
  sha256 "627b346b59c5787f9d2c3d151bfdb286ba8aa851bd75d77dbf244e12dcd36c69"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
