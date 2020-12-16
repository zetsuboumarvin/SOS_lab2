NAME = lab2
FLAGS = -MD

SRC_DIR = src
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJ_DIR = bin
OBJS = $(addprefix $(OBJ_DIR)/,$(notdir $(SRCS:.c=.o)))

all: $(NAME)

$(NAME): $(OBJS)
	gcc $(FLAGS) $^ -o $@

VPATH := $(OBJ_DIR) $(SRC_DIR)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	gcc -c $(FLAGS) $< -o $@
-include $(wildcard $(OBJ_DIR)/*.d)

clean:
	rm -f $(OBJS)
	rm -f $(wildcard $(OBJ_DIR)/*.d)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
