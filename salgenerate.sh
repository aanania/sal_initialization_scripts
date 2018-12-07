cp /home/andres/setup.env /home/andres/ts_sal/setup.env
cd /home/andres/ts_sal/
source /home/andres/ts_sal/setup.env
cd /home/andres/ts_sal/test
cp ~/ts_xml/sal_interfaces/* /home/andres/ts_sal/test/.
cp ~/ts_xml/sal_interfaces/*/* /home/andres/ts_sal/test/.

for var in Electrometer 
do
	salgenerator $var validate
	salgenerator $var sal html
	salgenerator $var sal cpp
	salgenerator $var sal python
	salgenerator $var lib
done
echo "source ${LSST_SDK_INSTALL}/lsstsal/scripts/gengenericefd.tcl ; updateefdschema" | tclsh
