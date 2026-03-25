uci = luci.model.uci.cursor()

m = Map("qmodem_ttl", translate("TTL / Hop Limit Config"))

s = m:section(NamedSection, "main", "main", translate("Global Config"))

enable = s:option(Flag, "enable", translate("Enable"))
enable.default = "0"

ttl4 = s:option(Value, "ttl4", translate("IPv4 TTL"))
ttl4.default = 64
ttl4.datatype = "uinteger"

hl6 = s:option(Value, "hl6", translate("IPv6 Hop Limit"))
hl6.default = 65
hl6.datatype = "uinteger"

return m
