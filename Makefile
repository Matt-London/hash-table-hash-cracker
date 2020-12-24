exec=cracker.out

cracker: include/constants.h build/cracker.o build/Hash.o
	@echo "🚧 Building..."
	gcc build/* -o bin/$(exec)

build/cracker.o: src/cracker.c include/constants.h
	gcc -c src/cracker.c -o build/cracker.o

build/Hash.o: include/constants.h src/objects/Hash.c include/objects/Hash.h
	g++ -c src/objects/Hash.c -o build/Hash.o



run: cracker clean
	@echo "🚀 Executing..."
	@echo ""
	@echo "====================="
	@echo ""
	@./bin/$(exec)

clean:
	@echo "🧹 Cleaning..."
	rm build/*.o