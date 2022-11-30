
TARGET	=	innblock
S_SRCS 	=	$(wildcard src/*.cpp)
OBJS	=	$(patsubst src/%.cpp, src/%.o, $(S_SRCS))

CFLAGS	+=	-Isrc
CFLAGS 	+= 	-D__LINUX__
CFLAGS	+=  -ggdb3 -O0
USEDE	=	-DDEBUG

CC		=	g++

$(TARGET):$(OBJS)
	$(CC) $(CFLAGS) $(USEDE) $(OBJS) -o $@

%.o: %.cpp
	$(CC) -c $^ $(CFLAGS) $(USEDE)  -o $@


.PHONY : clean

clean:
	rm  $(TARGET)	-f
	rm $(OBJS) -f