@echo off
pushd source
echo ----------------------------------------------------------------
echo LIST OF EVERY FILE AND LINE NUMBER THAT CONTAINS A TODO: COMMENT
echo ----------------------------------------------------------------
echo:
findstr /s /i /N TODO: *.c *cpp *h *hpp
popd
pause >nul

