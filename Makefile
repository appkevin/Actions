SHELL := /bin/bash

.PHONY: all
all:
	@echo -e "\\x1b[00;36mgcc -I. Rechner.c  && ./a.out\\x1b[00m"
	@gcc -I. Rechner.c  && ./a.out

.PHONY: cov
cov:
	@echo -e "\\x1b[00;36mgcc -I. -fprofile-arcs -ftest-coverage Rechner.c && ./a.out\\x1b[00m"
	@gcc -I. -fprofile-arcs -ftest-coverage Rechner.c && ./a.out
	@echo ""
	@echo -e "\\x1b[00;36mgcov Rechner.c\\x1b[00m"
	@gcov Rechner.c

.PHONY: tis
tis:
	@echo -e "\\x1b[00;36mtis-analyzer-gui -64 -I . -val -slevel 100 Rechner.c -no-val-print\\x1b[00m"
	@tis-analyzer-gui -64 -I . -val -slevel 100 Rechner.c -no-val-print

.PHONY: clean
clean:
	rm -rf a.out a.out.dSYM *.gcov *.gcda *.gcno
