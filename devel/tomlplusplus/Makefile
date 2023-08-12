PORTNAME=	tomlplusplus
DISTVERSION=	3.3.0
DISTVERSIONPREFIX=	v
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	kyle@ambroffkao.com
COMMENT=	TOML config parser and serializer for C++
WWW=		https://marzer.github.io/tomlplusplus/

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GH_ACCOUNT=	marzer

USES=		cmake
CMAKE_OFF=	BUILD_EXAMPLES
CMAKE_TESTING_ON=	BUILD_EXAMPLES

.include <bsd.port.mk>
