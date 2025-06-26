class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.2"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.2/talostpl-darwin-amd64"
  sha256 "652572dca8f9764e5418f185179847817c581f0f6dc16fc83729e48d331fae6f"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
