ASM         =         nasm
CC          =         ld

RM          =         rm -f

ASFLAGS     =         -f elf64

CFLAGS      =         -shared -fPIC

NAME        =         libasm.so

T_NAME      =         asm

SRCS        = src/strlen.asm         \
              src/strchr.asm         \
              src/strrchr.asm         \
              src/memset.asm        \
              src/memcpy.asm        \
              src/strcmp.asm        \
              src/strncmp.asm        \
              src/strcasecmp.asm    \
              src/strcspn.asm        \



OBJS        = $(SRCS:.asm=.o)

all:        $(NAME)

$(NAME):    $(OBJS)
		$(CC) $(CFLAGS) $(OBJS) -o $(NAME)



%.o : %.asm
		$(ASM) $(ASFLAGS) -o $@ $<

clean:
		$(RM) $(OBJS) $(T_OBJS)

fclean:     clean	
		$(RM) $(NAME) $(T_NAME)

re:        fclean all

.PHONY:     all clean fclean re
