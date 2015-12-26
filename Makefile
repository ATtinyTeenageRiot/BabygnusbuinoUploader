.PHONY: clean All

All:
	@echo "----------Building project:[ BabygnusbuinoUploader - Release ]----------"
	@cd "BabygnusbuinoUploader" && "$(MAKE)" -f  "BabygnusbuinoUploader.mk" PrePreBuild && "$(MAKE)" -f  "BabygnusbuinoUploader.mk"
clean:
	@echo "----------Cleaning project:[ BabygnusbuinoUploader - Release ]----------"
	@cd "BabygnusbuinoUploader" && "$(MAKE)" -f  "BabygnusbuinoUploader.mk" clean
