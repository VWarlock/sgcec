dev.reset();
--rom.write(0xA13000, 0xFFFF);
--rom.write(0xA13008, 0xFFFF);
--rom.write(0xA13010, 0xFFFF);
--rom.write(0xA13018, 0xFFFF);
--rom.write(0xA13020, 0xFFFF);
--rom.write(0xA13030, 0xFFFF);
--rom.write(0xA13040, 0xFFFF);
--rom.write(0xA13060, 0xFFFF);
local rom_size = rom.size();
local f = io.open(rom.saveto(), "wb+");
print(string.format("ROM NAME: '%s'\r\nSIZE: %Xh bytes", rom.name.good(), rom_size));
f:write(rom.dump(rom_size));
f:flush();
f:close();
print("Cart was successfully dumped!");