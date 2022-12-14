#include "myfine.h"

void *aligned_malloc(size_t size, size_t alignment);
void aligned_free(void *palignedmem);
ulint mach_read_from_4(const byte *b);       /*!< in: pointer to four bytes */
ib_uint64_t mach_read_from_8(const byte *b); /*!< in: pointer to 8 bytes */
ulint mach_read_from_1(const byte *b);       /*!< in: pointer to byte */
ulint mach_read_from_2(const byte *b);       /*!< in: pointer to 2 bytes */
void *ut_align_down(const void *ptr, ulint align_no);
int16_t mach_read_from_2_16(const byte *b);
