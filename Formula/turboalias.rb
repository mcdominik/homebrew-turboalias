class Turboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/mcdominik/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.3.tar.gz"
  sha256 "0d02082a395e451b0d727dd3c4d5bd8abc11367f69b157013b7e1de82b8d4929"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end