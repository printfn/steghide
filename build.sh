#!/bin/bash
set -uo pipefail

brew install zlib mhash mcrypt jpeg
./configure
make || true
(cd src; g++ -O2 -Wall -o steghide Arg.o Arguments.o AssertionFailed.o AuFile.o AuSampleValues.o DFSAPHeuristic.o BFSAPHeuristic.o BinaryIO.o BitString.o BmpFile.o BmpPaletteSampleValue.o BmpRGBSampleValue.o BmpSampleValue.o WKSConstructionHeuristic.o DMDConstructionHeuristic.o CvrStgFile.o Edge.o EdgeIterator.o EmbData.o Embedder.o EncryptionAlgorithm.o EncryptionMode.o Extractor.o Graph.o JpegFile.o JpegSampleValue.o MCryptPP.o MHashKeyGen.o MHashPP.o Matching.o MatchingAlgorithm.o ProgressOutput.o PseudoRandomSource.o RGBTriple.o RandomSource.o SampleValue.o SampleValueAdjacencyList.o Selector.o Session.o SteghideError.o Terminal.o Utils.o Vertex.o WavChunk.o WavChunkHeader.o WavChunkUnused.o WavFile.o WavFormatChunk.o WavPCMSampleValue.o error.o main.o msg.o SMDConstructionHeuristic.o /usr/local/lib/libintl.dylib -ljpeg -lmcrypt -lmhash -lz)
mv src/steghide .
