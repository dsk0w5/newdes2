/*
 * SPDX-FileCopyrightText: 1990 Mark Riordan
 * SPDX-License-Identifier: 0BSD
 */

#ifdef __STDC__
# define	P(s) s
#else
# define P(s) ()
#endif

int getopt P((int argc , char **argv , char *opts ));

#undef P
