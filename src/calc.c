#include <stdio.h>

typedef struct yy_buffer_state *YY_BUFFER_STATE;

int yyparse(void);
YY_BUFFER_STATE yy_scan_string(const char *str);
void yy_delete_buffer(YY_BUFFER_STATE buffer);

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "yycalc: usage: %s <expression>...\n", argv[0]);
        return 1;
    }

    YY_BUFFER_STATE buffer;

    for (int i = 1; i < argc; ++i) {
        buffer = yy_scan_string(argv[i]);
        int err = yyparse();
        yy_delete_buffer(buffer);

        if (err != 0) {
            return 1;
        }
    }

    return 0;
}