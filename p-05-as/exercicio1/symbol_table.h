#ifndef SYMBOL_TABLE_H
#define SYMBOL_TABLE_H

typedef enum {integer, character, doub} basic_type;

typedef struct _t1{
	char name[32];
	int ncol;
	int nline;
	basic_type type;
	struct _t1 *next;
} table_element;

table_element *insert_el(char *str, basic_type t, int ncol, int nline);
void show_table();
table_element *search_el(char *str);

#endif
