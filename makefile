include $(TOPDIR)/rules.mk

PKG_NAME:=student-db
PKG_REALEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git@github.com:Veronika20051/my-openwrt.git
PKG_SOURCE_DATE:=2025-01-17
PKG_SOURCE_VERSION:=HEAD
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Veronika Grabareva
include $(INCLUDE_DIR)/package.mg

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/openwrt_student_db $(1)/usr/bin/
endef

define Package/$(PKG_NAME)/destription
	CLI application for storing and reading student data for educational purposes
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
