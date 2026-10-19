class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.14.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.5/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "82b33c727ea79c768e561525d572fa5f1a9186ee4285b857bd91df04395544aa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.5/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "a807ea968ad79d81005ad2eddb5571eaec265e3cac0d3555f822f89467164c35"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
