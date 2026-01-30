class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.3.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.3.1/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "f607e122e0253c8da6220f0e5de507240b645375bb11dee5253ca7b93baf61a2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.3.1/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "b2daf4398ae5ca04e1b3188bdebd122836200581fee9a3bd0e9fe37cef401986"
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
