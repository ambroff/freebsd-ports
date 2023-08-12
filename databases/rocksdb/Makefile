PORTNAME=	rocksdb
PORTVERSION=	8.3.2
DISTVERSIONPREFIX=	v
CATEGORIES=	databases

MAINTAINER=	kyle@ambroffkao.com
COMMENT=	Persistent key-value store for fast storage environments
WWW=		https://rocksdb.org/ \
		https://github.com/facebook/rocksdb

LICENSE=	APACHE20 GPLv2
LICENSE_COMB=	dual
LICENSE_FILE_APACHE20=	${WRKSRC}/LICENSE.Apache
LICENSE_FILE_GPLv2=	${WRKSRC}/COPYING

BUILD_DEPENDS=	bash:shells/bash

LIB_DEPENDS=	libgflags.so:devel/gflags \
		libsnappy.so:archivers/snappy

USES=		compiler:c++17-lang cmake

CMAKE_ON=	USE_RTTI
CMAKE_OFF=	WITH_TESTS WITH_BENCHMARK_TOOLS

CONFIGURE_ARGS=	make_config.mk
CONFIGURE_ENV=	PORTABLE=0 ROCKSDB_ROOT=${WRKSRC}
CONFIGURE_SCRIPT=	build_tools/build_detect_platform
HAS_CONFIGURE=	yes
USE_CXXSTD=	c++17
USE_LDCONFIG=	yes

PLIST_SUB=	PORTVERSION=${PORTVERSION} SHLIB_VER=${PORTVERSION:R}

GH_ACCOUNT=	facebook
USE_GITHUB=	yes

CONFLICTS_INSTALL=	rocksdb-lite

.include <bsd.port.mk>
