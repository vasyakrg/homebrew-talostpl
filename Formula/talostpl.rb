class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.2.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.0/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "16a762f15be082fdb8d19552c0ee68e3f87422106dd66a61448b5994f4833eda"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.0/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "ae3912e51a2ba3dffefd5d6a1e6ea9eb631a6308b596f46af1a66a1a57ac651d"
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
