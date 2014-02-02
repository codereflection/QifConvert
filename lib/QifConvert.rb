require 'qiflib'

input_list = []

input_list << {
	:owner	=> 'Jeff',
	:filename	=> './data/EXPORT.QIF',
	:source 	=> Qiflib::SOURCE_QUICKEN
}

csv_lines = Qiflib::Util.transactions_to_csv(input_list)

csv_lines.each do |line|
	puts line
end