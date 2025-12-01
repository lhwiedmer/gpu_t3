#!/bin/bash

# Compila os arquivos .cu usando nvcc
./mppSort/compila.sh
./bitonicSort/compila.sh

# Executa os programas compilados
echo "Executando aquecimento"

./mppSort/mppSort 1000000 1024 10

echo "Iniciando testes mppSort"

echo "Executando teste 1M"

./mppSort/mppSort 1000000 1024 10

echo "Executando teste 2M"

./mppSort/mppSort 2000000 1024 10

echo "Executando teste 4M"

./mppSort/mppSort 4000000 1024 10

echo "Executando teste 8M"

./mppSort/mppSort 8000000 1024 10

echo "Iniciando testes bitonicSort"

echo "Executando teste 1M"

./bitonicSort/segmented-sort-bitonic-1024 -n 1000000 -segRange 20 4000

echo "Executando teste 2M"

./bitonicSort/segmented-sort-bitonic-1024 -n 2000000 -segRange 20 4000

echo "Executando teste 4M"

./bitonicSort/segmented-sort-bitonic-1024 -n 4000000 -segRange 20 4000

echo "Executando teste 8M"

./bitonicSort/segmented-sort-bitonic-1024 -n 8000000 -segRange 20 4000