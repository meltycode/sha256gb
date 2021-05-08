@echo off
set TRG=sha2_test
rgbasm -E -h -p 0xFF -v -o %TRG%.obj %TRG%.z80
rgblink -m %TRG%MAP.txt -n %TRG%.SYM -p 0xFF -o %TRG%.GB %TRG%.obj
rgbfix -p 0xFF -v %TRG%.GB
pause
