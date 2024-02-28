# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
pkgname=ainyava-calamares-git
_destname1="/etc/"
_destname2="/usr/"
pkgver=1.0.0
pkgrel=1
pkgdesc="YavaLinux customized calamares"
arch=('any')
url="https://github.com/yavalinux/ainyava-calamares"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("$pkgname::git+$url.git")
sha256sums=('SKIP')

package() {
	install -dm755 ${pkgdir}${_destname1}
	cp -r ${srcdir}/${pkgname}${_destname1}/* ${pkgdir}${_destname1}

	install -dm755 ${pkgdir}${_destname2}
	cp -r ${srcdir}/${pkgname}${_destname2}/* ${pkgdir}${_destname2}
}
