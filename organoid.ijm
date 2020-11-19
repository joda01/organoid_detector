open("A1--W00001--P00003--Z00007--T00000--Trans.tif");
run("Subtract Background...", "rolling=20 light");
setAutoThreshold("Triangle");
//run("Threshold...");
setThreshold(0, 50835);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "size=2000-Infinity pixel show=Outlines clear add");
selectWindow("Drawing of A1--W00001--P00003--Z00007--T00000--Trans.tif");
roiManager("Measure");
