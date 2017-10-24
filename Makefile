.PHONY: clean All

All:
	@echo "----------Building project:[ practica1 - Debug ]----------"
	@cd "practica1" && "$(MAKE)" -f  "practica1.mk"
clean:
	@echo "----------Cleaning project:[ practica1 - Debug ]----------"
	@cd "practica1" && "$(MAKE)" -f  "practica1.mk" clean
