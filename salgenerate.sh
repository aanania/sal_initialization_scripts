cp /home/andres/setup.env /home/andres/ts_sal/setup.env
cd /home/andres/ts_sal/
source setup.env
cd test
cp ~/ts_xml/sal_interface/* .
cp ~/ts_xml/sal_interface/*/* .

for var in MTM1M3 
do
	salgenerator $var validate
	salgenerator $var sal html
	salgenerator $var sal cpp
	salgenerator $var sal python
	salgenerator $var lib
done
echo "source ${LSST_SDK_INSTALL}/lsstsal/scripts/gengenericefd.tcl ; updateefdschema" | tclsh
