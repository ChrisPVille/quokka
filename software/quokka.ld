MEMORY {
	FPGAPROG: start $ff00, size $e0, fill = yes, fillval = $EA;
	FPGARAM: start $ffe0, size $1a, fill = yes, fillval = $55;
	FPGAVECTORS: start $fffa, size $06, fill = yes, fillval = $55;
}

SEGMENTS {
	PROG: load = FPGAPROG, type = ro;
	EXCHANGE: load = FPGARAM, type = rw;
	VECTORS: load = FPGAVECTORS, type = ro;
}
