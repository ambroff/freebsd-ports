PORTNAME=	visit_struct
DISTVERSION=	1.0
DISTVERSIONPREFIX=	v
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	kyle@ambroffkao.com
COMMENT=	A header-only library providing structure visitors for C++11 and C++14
WWW=		https://github.com/cbeck88/visit_struct

LICENSE=	BSL
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GH_ACCOUNT=	cbeck88

NO_ARCH=	yes

do-build:

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/include/visit_struct
	${INSTALL_DATA} \
		${WRKSRC}/include/visit_struct/visit_struct_boost_fusion.hpp \
		${WRKSRC}/include/visit_struct/visit_struct_intrusive.hpp \
		${WRKSRC}/include/visit_struct/visit_struct_boost_hana.hpp \
		${WRKSRC}/include/visit_struct/visit_struct.hpp \
		${STAGEDIR}${PREFIX}/include/visit_struct
	${MKDIR} ${STAGEDIR}${PREFIX}/share/cmake/Modules
	${INSTALL_DATA} \
		Findvisit_struct.cmake \
		${STAGEDIR}${PREFIX}/share/cmake/Modules/Findvisit_struct.cmake

.include <bsd.port.mk>
