class Turboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/mcdominik/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.4.tar.gz"
  sha256 "6ed1be5392ae9173b52512b6f6289f69ce7703efba4734f17f2fb71f52593856"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end