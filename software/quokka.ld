MEMORY {
	FPGAPROG: start $ff00, size $f0, fill = yes, fillval = $EA;
	FPGARAM: start $fff0, size $0a, fill = yes, fillval = $55;
	FPGAVECTORS: start $fffa, size $06, fill = yes, fillval = $55;
}

SEGMENTS {
	PROG: load = FPGAPROG, type = ro;
	EXCHANGE: load = FPGARAM, type = rw;
	VECTORS: load = FPGAVECTORS, type = ro;
}
