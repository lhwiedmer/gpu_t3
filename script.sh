#!/bin/bash

# Compila os arquivos .cu usando nvcc
./compilaMpp.sh
./compilaBitonic.sh

# Executa os programas compilados
echo "Executando aquecimento"

./mppSort 1000000 1024 10

echo "Iniciando testes mppSort"

echo "Executando teste 1M"

./mppSort 1000000 1024 10

echo "Executando teste 2M"

./mppSort 2000000 1024 10

echo "Executando teste 4M"

./mppSort 4000000 1024 10

echo "Executando teste 8M"

./mppSort 8000000 1024 10

echo "Iniciando testes bitonicSort"

echo "Executando teste 1M"

./segmented-sort-bitonic-1024 -n 1000000 -segRange 20 4000

echo "Executando teste 2M"

./segmented-sort-bitonic-1024 -n 2000000 -segRange 20 4000

echo "Executando teste 4M"

./segmented-sort-bitonic-1024 -n 4000000 -segRange 20 4000

echo "Executando teste 8M"

./segmented-sort-bitonic-1024 -n 8000000 -segRange 20 4000