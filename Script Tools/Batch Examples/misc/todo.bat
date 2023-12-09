@echo off

set search_term=TODO
set source_path=..\source\

pushd %source_path%
echo ----------------------------------------------------------------
echo LIST OF EVERY FILE AND LINE NUMBER THAT CONTAINS A TODO: COMMENT
echo ----------------------------------------------------------------
echo:
echo: [ ] Pending [-] In Progress [X] Complete
echo:
findstr /s /i /N %search_term%: *.c *cpp *h *hpp
popd
pause >nul

