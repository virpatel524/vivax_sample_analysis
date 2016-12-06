## functions 

function CollectInsertSizeMetrics ()
{
	nombre=$(basename $1)
	basedir="../data/nyu_pipeline_results/CollectAlignmentSummaryMetrics/"
	java -jar /home/vdp5/source_code/picard.jar CollectInsertSizeMetrics INPUT=$1 OUTPUT=${basedir}${nombre}_insert_metrics.txt HISTOGRAM_FILE=${basedir}${nombre}_insert_size_histogram.pdf
}



for alpha in $1/*; do
	IFS=. read -a newarray <<< $alpha
	base=$(basename $alpha)
	if [[ ${newarray[-1]} == "bai" ]]; then
		continue
	else
		CollectInsertSizeMetrics $alpha
	fi
done