class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.9"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.9/talostpl-darwin-arm64"
  sha256 "c1bb6303986955c4720f8e762b4fbfb55d763ef0d269c0f082360d0d8620bcb7"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
