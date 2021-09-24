#include <stdlib.h>
#include <errno.h>
#include <sary.h>
  
int
main (int argc, char **argv)
{
    char *file_name;
    SaryInt ipoints;
    gboolean status;
    SaryBuilder *builder;

    if (argc != 2) exit(2);
    file_name = argv[1];

    builder = sary_builder_new(file_name);
    sary_builder_set_ipoint_func(builder, sary_ipoint_char_utf8);

    ipoints = sary_builder_index(builder);
    if (ipoints == -1) {
	g_print("error: %s(.ary): %s\n", file_name, g_strerror(errno));
	exit(2);
    }

    status = sary_builder_sort(builder);
    if (status == FALSE) {
	g_print("error: %s(.ary): %s\n", file_name, g_strerror(errno));
	exit(2);
    }
    sary_builder_destroy(builder);
    return 0;
}
