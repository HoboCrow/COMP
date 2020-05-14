#include "semantics.h"

#include <stdio.h>

#include "structures.h"
#include "symbol_table.h"

int check_program(is_program* p) {
    int errorcount = 0;

    errorcount = check_vardec_list(p->vlist);
    errorcount += check_statement_list(p->slist);
    return errorcount;
}

int check_vardec_list(is_vardec_list* ivl) {
    int errorcount = 0;
    is_vardec_list* tmp;

    for (tmp = ivl; tmp; tmp = tmp->next) errorcount += check_vardec(tmp->val);
    return errorcount;
}

int check_vardec(is_vardec* iv) {
    switch (iv->disc_d) {
        case d_integer:
            return check_integer_dec(iv->data_vardec.u_integer_dec);
        case d_character:
            return check_character_dec(iv->data_vardec.u_character_dec);
        case d_double:
            return check_double_dec(iv->data_vardec.u_double_dec);
    }
    return 0;
}

int check_integer_dec(is_integer_dec* iid) {
    table_element* newel = insert_el(iid->id, integer, iid->nline, iid->ncol);

    if (newel == NULL) {
        table_element* first_decl = search_el(iid->id);
        printf(
            "Line %d col %d : Symbol %s already defined at line %d col %d!\n",
            iid->nline, iid->ncol, iid->id, first_decl->nline,
            first_decl->ncol);
        return 1;
    }
    return 0;
}

int check_character_dec(is_character_dec* icd) {
    table_element* newel = insert_el(icd->id, character, icd->nline, icd->ncol);

    if (newel == NULL) {
        table_element* first_decl = search_el(icd->id);
        printf(
            "Line %d col %d : Symbol %s already defined at line %d col %d!\n",
            icd->nline, icd->ncol, icd->id, first_decl->nline,
            first_decl->ncol);
        return 1;
    }
    return 0;
}

int check_double_dec(is_double_dec* idd) {
    table_element* newel = insert_el(idd->id, doub, idd->nline, idd->ncol);

    if (newel == NULL) {
        table_element* first_decl = search_el(idd->id);
        printf(
            "Line %d col %d : Symbol %s already defined at line %d col %d!\n",
            idd->nline, idd->ncol, idd->id, first_decl->nline,
            first_decl->ncol);
        return 1;
    }
    return 0;
}

int check_statement_list(is_statement_list* isl) {
    int errorcount = 0;
    is_statement_list* tmp;

    for (tmp = isl; tmp; tmp = tmp->next)
        errorcount += check_statement(tmp->val);
    return errorcount;
}

int check_statement(is_statement* is) {
    switch (is->disc_d) {
        case d_write:
            return check_write_statement(is->data_statement.u_write_statement);
    }
}

int check_write_statement(is_write_statement* iws) {
    table_element* aux = search_el(iws->id);

    if (aux == NULL) {
        printf("Line %d col %d : Symbol %s not declared!\n", iws->nline,
               iws->ncol, iws->id);
        return 1;
    }
    return 0;
}
