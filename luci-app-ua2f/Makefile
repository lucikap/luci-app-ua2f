include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-ua2f
PKG_VERSION=1.8.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-ua2f
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	DEPENDS:=+ua2f
	TITLE:=file transfer tool
	PKGARCH:=all
endef

define Package/luci-app-ua2f/description
	Configure UA2F on the web.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-ua2f/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/ua2f/
	$(INSTALL_DIR) $(1)/etc/config/
	$(INSTALL_DIR) $(1)/etc/init.d/
	
	$(INSTALL_BIN) ./controller/autoua2f.lua $(1)/usr/lib/lua/luci/controller/autoua2f.lua
	$(INSTALL_BIN) ./model/cbi/autoua2f.lua $(1)/usr/lib/lua/luci/model/cbi/autoua2f.lua
	$(INSTALL_DATA) ./view/ua2f/* $(1)/usr/lib/lua/luci/view/ua2f/
	$(INSTALL_CONF) ./etc/config/autoua2f $(1)/etc/config/autoua2f
	$(INSTALL_BIN) ./etc/init.d/autoua2f $(1)/etc/init.d/autoua2f
endef

$(eval $(call BuildPackage,luci-app-ua2f))
