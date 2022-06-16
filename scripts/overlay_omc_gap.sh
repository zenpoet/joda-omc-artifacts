# specify OMC csv report
input_csv=$1

if [ -z $1 ]; then
	input_csv="/home/stg/zenpoet.github.io/data/omc_sc_per_class.csv"
fi

# specify clover class URL
clover_pkg_summary_url="/home/stg/zenpoet.github.io/omc/clover/org/joda/time/chrono/pkg-summary.html"

# specify gap threshold
gap_threshold=28

# format of input file
# header
# <className>,<sc>,<omc_sc>,<omc_gap>

tmp=/tmp/tmp.omc.treatment
echo "tmp file: $tmp"
tail -n +2 $input_csv > $tmp


echo "There are $(wc -l $tmp) classes"


while IFS=, read -r fq_class_name sc omc_sc omc_gap
do
        # display fields using f1, f2,..,f7
	if awk "BEGIN {exit !($omc_gap >= $gap_threshold)}"; then
		printf '%s,%f,%f,%f\n' "$fq_class_name" "$sc" "$omc_sc" "$omc_gap"
		class_name=$( echo "$fq_class_name" | sed 's/\./ /g' | awk '{print $NF}' )
		package_name=$( echo "$fq_class_name" | sed "s/\.${class_name}//g" )
		echo "package: $package_name class: $class_name"
		# format: <packageName>.<className>
		# org.joda.time.convert.PartialConverter,0,0,0
		# org.joda.time.Seconds,0,66,66

		omc_sc=$( printf '%.1f' $omc_sc )
		omc_gap=$( printf '%.1f' $omc_gap )

		grep $class_name $clover_pkg_summary_url 
		if [ $? -eq 0 ]; then
			# add warning icon
			grep warning $clover_pkg_summary_url | grep $class_name
			if [ $? -eq 0 ]; then
				echo "Would skip warning icon to $class_name -- already there "
			else
				sed -i "s/<a href=\"${class_name}/<img src=\"..\/..\/..\/..\/aui\/css\/icons\/messages\/icon-warning.png\" \/> <font size=-1 color=gray>OMC gap: ${omc_gap}%<\/font> <br> <a href=\"${class_name}/g" $clover_pkg_summary_url
			fi



			# add OMC gap info when hovering
#			grep sortValue $clover_pkg_summary_url | grep $class_name | grep -i omc
#			if [ $? -eq 0 ]; then
#				echo "Would skip OMC hover for $class_name -- already there "
#			else
#				sed -i "s/sortValue\">${class_name}</sortValue\">OMCGap:${omc_gap}%_${class_name}</g" $clover_pkg_summary_url
#			fi
	
		fi

	fi
done <"$tmp"

# Update web site
cd /home/stg/zenpoet.github.io
git pull
git commit -a -m 'Overlay OMC info'
git push
