module("luci.controller.autoua2f", package.seeall)

function index()
    entry({"admin", "services", "autoua2f"}, cbi("autoua2f"), _("防检测"), 80)
end
