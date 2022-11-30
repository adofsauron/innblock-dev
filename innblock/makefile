
TARGET	=	innblock
S_SRCS 	=	$(wildcard ./*.cpp)
OBJS	=	$(patsubst ./%.cpp, src/%.o, $(S_SRCS))

CFLAGS	+=	-std=c11 -Isrc
CFLAGS 	+= 	-D__LINUX__
CFLAGS	+=  -ggdb3 -O0
USEDE	=	-DDEBUG

CC		=	gcc

$(TARGET):$(OBJS)
	$(CC) $(CFLAGS) $(USEDE) $(OBJS) -o $@

%.o: %.cpp
	$(CC) -c $^ $(CFLAGS) $(USEDE)  -o $@


.PHONY : clean

clean:
	rm  $(TARGET)	-f
	rm $(OBJS) -f