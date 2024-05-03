PORTNAME=	rocksdb
PORTVERSION=	9.1.0
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
		libsnappy.so:archivers/snappy \
		liblz4.so:archivers/liblz4 \
		libzstd.so:archivers/zstd

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

OPTIONS_DEFINE=	DEBUG LZ4 ZSTD
OPTIONS_DEFAULT=LZ4 ZSTD

DEBUG_MAKE_ENV=		DEBUG_LEVEL=2
DEBUG_MAKE_ENV_OFF=	DEBUG_LEVEL=0
LZ4_LIB_DEPENDS=	liblz4.so:archivers/liblz4
LZ4_MAKE_ENV_OFF=	ROCKSDB_DISABLE_LZ4=yes
ZSTD_LIB_DEPENDS=	libzstd.so:archivers/zstd
ZSTD_MAKE_ENV_OFF=	ROCKSDB_DISABLE_ZSTD=yes

.include <bsd.port.pre.mk>

.if ${CHOSEN_COMPILER_TYPE} == clang
CXXFLAGS+=	-Wno-inconsistent-missing-override -Wno-unused-parameter -Wno-unused-variable -Wno-unused-private-field
.endif

post-patch:
.if (${ARCH} == amd64 || ${ARCH} == i386) && !empty(CFLAGS:M-march=*)
	@${REINPLACE_CMD} -e 's| -march=native| ${CFLAGS:M-march=*}|' ${WRKSRC}/build_tools/build_detect_platform
.else
	@${REINPLACE_CMD} -e 's| -march=native||' ${WRKSRC}/build_tools/build_detect_platform
.endif

.include <bsd.port.post.mk>
