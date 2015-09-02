# Rabbit Myanmart font converter
# Author : Arkar Aung for Elixir language

defmodule Rabbit do

	"""
    Unicode to Zawgyi Rules
    """
	defp uni_to_zawgyi_rules() do 
		[{"\x{1004}\x{103a}\x{1039}","\x{1064}"},{"\x{1039}\x{1010}\x{103d}","\x{1096}"},{"\x{1014}(?=[\x{1030}\x{103d}\x{103e}\x{102f}\x{1039}])","\x{108f}"},{"\x{102b}\x{103a}","\x{105a}"},{"\x{100b}\x{1039}\x{100c}","\x{1092}"},{"\x{102d}\x{1036}","\x{108e}"},{"\x{104e}\x{1004}\x{103a}\x{1038}","\x{104e}"},{"[\x{1025}\x{1009}](?=[\x{1039}\x{102f}\x{1030}])","\x{106a}"},{"[\x{1025}\x{1009}](?=[\x{103a}])","\x{1025}"},{"\x{100a}(?=[\x{1039}\x{102f}\x{1030}\x{103d}])","\x{106b}"},{"(\x{1039}[\x{1000}-\x{1021}])\x{102f}","\\1\x{1033}"},{"(\x{1039}[\x{1000}-\x{1021}])\x{1030}","\\1\x{1034}"},{"\x{1039}\x{1000}","\x{1060}"},{"\x{1039}\x{1001}","\x{1061}"},{"\x{1039}\x{1002}","\x{1062}"},{"\x{1039}\x{1003}","\x{1063}"},{"\x{1039}\x{1005}","\x{1065}"},{"\x{1039}\x{1006}","\x{1066}"},{"\x{1039}\x{1007}","\x{1068}"},{"\x{1039}\x{1008}","\x{1069}"},{"\x{100a}(?=[\x{1039}\x{102f}\x{1030}])","\x{106b}"},{"\x{1039}\x{100b}","\x{106c}"},{"\x{1039}\x{100c}","\x{106d}"},{"\x{100d}\x{1039}\x{100d}","\x{106e}"},{"\x{100e}\x{1039}\x{100d}","\x{106f}"},{"\x{1039}\x{100f}","\x{1070}"},{"\x{1039}\x{1010}","\x{1071}"},{"\x{1039}\x{1011}","\x{1073}"},{"\x{1039}\x{1012}","\x{1075}"},{"\x{1039}\x{1013}","\x{1076}"},{"\x{1039}\x{1013}","\x{1076}"},{"\x{1039}\x{1014}","\x{1077}"},{"\x{1039}\x{1015}","\x{1078}"},{"\x{1039}\x{1016}","\x{1079}"},{"\x{1039}\x{1017}","\x{107a}"},{"\x{1039}\x{1018}","\x{107b}"},{"\x{1039}\x{1019}","\x{107c}"},{"\x{1039}\x{101c}","\x{1085}"},{"\x{103f}","\x{1086}"},{"(\x{103c})\x{103e}","\\1\x{1087}"},{"\x{103d}\x{103e}","\x{108a}"},{"(\x{1064})([\x{1031}]?)([\x{103c}]?)([\x{1000}-\x{1021}])\x{102d}","\\2\\3\\4\x{108b}"},{"(\x{1064})([\x{1031}]?)([\x{103c}]?)([\x{1000}-\x{1021}])\x{102e}","\\2\\3\\4\x{108c}"},{"(\x{1064})([\x{1031}]?)([\x{103c}]?)([\x{1000}-\x{1021}])\x{1036}","\\2\\3\\4\x{108d}"},{"(\x{1064})([\x{1031}]?)([\x{103c}]?)([\x{1000}-\x{1021}])","\\2\\3\\4\\1"},{"\x{101b}(?=[\x{102f}\x{1030}\x{103d}\x{108a}])","\x{1090}"},{"\x{100f}\x{1039}\x{100d}","\x{1091}"},{"\x{100b}\x{1039}\x{100b}","\x{1097}"},{"([\x{1000}-\x{1021}\x{108f}\x{1029}\x{1090}])([\x{1060}-\x{1069}\x{106c}\x{106d}\x{1070}-\x{107c}\x{1085}\x{108a}])?([\x{103b}-\x{103e}]*)?\x{1031}","\x{1031}\\1\\2\\3"},{"([\x{1000}-\x{1021}\x{1029}])([\x{1060}-\x{1069}\x{106c}\x{106d}\x{1070}-\x{107c}\x{1085}])?(\x{103c})","\\3\\1\\2"},{"\x{103a}","\x{1039}"},{"\x{103b}","\x{103a}"},{"\x{103c}","\x{103b}"},{"\x{103d}","\x{103c}"},{"\x{103e}","\x{103d}"},{"\x{103d}\x{102f}","\x{1088}"},{"([\x{102f}\x{1030}\x{1014}\x{101b}\x{103c}\x{108a}\x{103d}\x{1088}])([\x{1032}\x{1036}]{0,1})\x{1037}","\\1\\2\x{1095}"},{"\x{102f}\x{1095}","\x{102f}\x{1094}"},{"([\x{1014}\x{101b}])([\x{1032}\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])\x{1037}","\\1\\2\x{1095}"},{"\x{1095}\x{1039}","\x{1094}\x{1039}"},{"([\x{103a}\x{103b}])([\x{1000}-\x{1021}])([\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}]?)\x{102f}","\\1\\2\\3\x{1033}"},{"([\x{103a}\x{103b}])([\x{1000}-\x{1021}])([\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}]?)\x{1030}","\\1\\2\\3\x{1034}"},{"\x{103a}\x{102f}","\x{103a}\x{1033}"},{"\x{103a}([\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])\x{102f}","\x{103a}\\1\x{1033}"},{"([\x{103a}\x{103b}])([\x{1000}-\x{1021}])\x{1030}","\\1\\2\x{1034}"},{"\x{103a}\x{1030}","\x{103a}\x{1034}"},{"\x{103a}([\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])\x{1030}","\x{103a}\\1\x{1034}"},{"\x{103d}\x{1030}","\x{1089}"},{"\x{103b}([\x{1000}\x{1003}\x{1006}\x{100f}\x{1010}\x{1011}\x{1018}\x{101a}\x{101c}\x{101a}\x{101e}\x{101f}])","\x{107e}\\1"},{"\x{107e}([\x{1000}\x{1003}\x{1006}\x{100f}\x{1010}\x{1011}\x{1018}\x{101a}\x{101c}\x{101a}\x{101e}\x{101f}])([\x{103c}\x{108a}])([\x{1032}\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])","\x{1084}\\1\\2\\3"},{"\x{107e}([\x{1000}\x{1003}\x{1006}\x{100f}\x{1010}\x{1011}\x{1018}\x{101a}\x{101c}\x{101a}\x{101e}\x{101f}])([\x{103c}\x{108a}])","\x{1082}\\1\\2"},{"\x{107e}([\x{1000}\x{1003}\x{1006}\x{100f}\x{1010}\x{1011}\x{1018}\x{101a}\x{101c}\x{101a}\x{101e}\x{101f}])([\x{1033}\x{1034}]?)([\x{1032}\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])","\x{1080}\\1\\2\\3"},{"\x{103b}([\x{1000}-\x{1021}])([\x{103c}\x{108a}])([\x{1032}\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])","\x{1083}\\1\\2\\3"},{"\x{103b}([\x{1000}-\x{1021}])([\x{103c}\x{108a}])","\x{1081}\\1\\2"},{"\x{103b}([\x{1000}-\x{1021}])([\x{1033}\x{1034}]?)([\x{1032}\x{1036}\x{102d}\x{102e}\x{108b}\x{108c}\x{108d}\x{108e}])","\x{107f}\\1\\2\\3"},{"\x{103a}\x{103d}","\x{103d}\x{103a}"},{"\x{103a}([\x{103c}\x{108a}])","\\1\x{107d}"},{"([\x{1033}\x{1034}])\x{1094}","\\1\x{1095}"},{"\x{108F}\x{1071}","\x{108F}\x{1072}"},{"([\x{1000}-\x{1021}])([\x{107B}\x{1066}])\x{102C}","\\1\x{102C}\\2"},{"\x{102C}([\x{107B}\x{1066}])\x{1037}","\x{102C}\\1\x{1094}"}]
	end
	
	"""
    Zawgyi to Unicode Rules
    """
	defp zawgyi_to_uni_rules() do
		[{"\x{200B}",""},{"(\x{103d}|\x{1087})","\x{103e}"},{"\x{103c}","\x{103d}"},{"(\x{103b}|\x{107e}|\x{107f}|\x{1080}|\x{1081}|\x{1082}|\x{1083}|\x{1084})","\x{103c}"},{"(\x{103a}|\x{107d})","\x{103b}"},{"\x{1039}","\x{103a}"},{"(\x{1066}|\x{1067})","\x{1039}\x{1006}"},{"\x{106a}","\x{1009}"},{"\x{106b}","\x{100a}"},{"\x{106c}","\x{1039}\x{100b}"},{"\x{106d}","\x{1039}\x{100c}"},{"\x{106e}","\x{100d}\x{1039}\x{100d}"},{"\x{106f}","\x{100d}\x{1039}\x{100e}"},{"\x{1070}","\x{1039}\x{100f}"},{"(\x{1071}|\x{1072})","\x{1039}\x{1010}"},{"\x{1060}","\x{1039}\x{1000}"},{"\x{1061}","\x{1039}\x{1001}"},{"\x{1062}","\x{1039}\x{1002}"},{"\x{1063}","\x{1039}\x{1003}"},{"\x{1065}","\x{1039}\x{1005}"},{"\x{1068}","\x{1039}\x{1007}"},{"\x{1069}","\x{1039}\x{1008}"},{"(\x{1073}|\x{1074})","\x{1039}\x{1011}"},{"\x{1075}","\x{1039}\x{1012}"},{"\x{1076}","\x{1039}\x{1013}"},{"\x{1077}","\x{1039}\x{1014}"},{"\x{1078}","\x{1039}\x{1015}"},{"\x{1079}","\x{1039}\x{1016}"},{"\x{107a}","\x{1039}\x{1017}"},{"\x{107c}","\x{1039}\x{1019}"},{"\x{1085}","\x{1039}\x{101c}"},{"\x{1033}","\x{102f}"},{"\x{1034}","\x{1030}"},{"\x{103f}","\x{1030}"},{"\x{1086}","\x{103f}"},{"\x{1036}\x{1088}","\x{1088}\x{1036}"},{"\x{1088}","\x{103e}\x{102f}"},{"\x{1089}","\x{103e}\x{1030}"},{"\x{108a}","\x{103d}\x{103e}"},{"([\x{1000}-\x{1021}])\x{1064}","\x{1004}\x{103a}\x{1039}\\1"},{"([\x{1000}-\x{1021}])\x{108b}","\x{1004}\x{103a}\x{1039}\\1\x{102d}"},{"([\x{1000}-\x{1021}])\x{108c}","\x{1004}\x{103a}\x{1039}\\1\x{102e}"},{"([\x{1000}-\x{1021}])\x{108d}","\x{1004}\x{103a}\x{1039}\\1\x{1036}"},{"\x{108e}","\x{102d}\x{1036}"},{"\x{108f}","\x{1014}"},{"\x{1090}","\x{101b}"},{"\x{1091}","\x{100f}\x{1039}\x{100d}"},{"\x{1019}\x{102c}(\x{107b}|\x{1093})","\x{1019}\x{1039}\x{1018}\x{102c}"},{"(\x{107b}|\x{1093})","\x{1039}\x{1018}"},{"(\x{1094}|\x{1095})","\x{1037}"},{"\x{1096}","\x{1039}\x{1010}\x{103d}"},{"\x{1097}","\x{100b}\x{1039}\x{100b}"},{"\x{103c}([\x{1000}-\x{1021}])([\x{1000}-\x{1021}])?","\\1\x{103c}\\2"},{"([\x{1000}-\x{1021}])\x{103c}\x{103a}","\x{103c}\\1\x{103a}"},{"\x{1031}([\x{1000}-\x{1021}])(\x{103e})?(\x{103b})?","\\1\\2\\3\x{1031}"},{"([\x{1000}-\x{1021}])\x{1031}([\x{103b}\x{103c}\x{103d}\x{103e}]+)","\\1\\2\x{1031}"},{"\x{1032}\x{103d}","\x{103d}\x{1032}"},{"\x{103d}\x{103b}","\x{103b}\x{103d}"},{"\x{103a}\x{1037}","\x{1037}\x{103a}"},{"\x{102f}(\x{102d}|\x{102e}|\x{1036}|\x{1037})\x{102f}","\x{102f}\\1"},{"\x{102f}\x{102f}","\x{102f}"},{"(\x{102f}|\x{1030})(\x{102d}|\x{102e})","\\2\\1"},{"(\x{103e})(\x{103b}|\x{1037})","\\2\\1"},{"\x{1025}(\x{103a}|\x{102c})","\x{1009}\\1"},{"\x{1025}\x{102e}","\x{1026}"},{"\x{1005}\x{103b}","\x{1008}"},{"\x{1036}(\x{102f}|\x{1030})","\\1\x{1036}"},{"\x{1031}\x{1037}\x{103e}","\x{103e}\x{1031}\x{1037}"},{"\x{1031}\x{103e}\x{102c}","\x{103e}\x{1031}\x{102c}"},{"\x{105a}","\x{102b}\x{103a}"},{"\x{1031}\x{103b}\x{103e}","\x{103b}\x{103e}\x{1031}"},{"(\x{102d}|\x{102e})(\x{103d}|\x{103e})","\\2\\1"},{"\x{102c}\x{1039}([\x{1000}-\x{1021}])","\x{1039}\\1\x{102c}"},{"\x{103c}\x{1004}\x{103a}\x{1039}([\x{1000}-\x{1021}])","\x{1004}\x{103a}\x{1039}\\1\x{103c}"},{"\x{1039}\x{103c}\x{103a}\x{1039}([\x{1000}-\x{1021}])","\x{103a}\x{1039}\\1\x{103c}"},{"\x{103c}\x{1039}([\x{1000}-\x{1021}])","\x{1039}\\1\x{103c}"},{"\x{1036}\x{1039}([\x{1000}-\x{1021}])","\x{1039}\\1\x{1036}"},{"\x{1092}","\x{100b}\x{1039}\x{100c}"},{"\x{104e}","\x{104e}\x{1004}\x{103a}\x{1038}"},{"\x{1040}(\x{102b}|\x{102c}|\x{1036})","\x{101d}\\1"},{"\x{1025}\x{1039}","\x{1009}\x{1039}"},{"([\x{1000}-\x{1021}])\x{103c}\x{1031}\x{103d}","\\1\x{103c}\x{103d}\x{1031}"},{"([\x{1000}-\x{1021}])\x{103d}\x{1031}\x{103b}","\\1\x{103b}\x{103d}\x{1031}"},{"([\x{1000}-\x{1021}])\x{1031}(\x{1039}[\x{1000}-\x{1021}])","\\1\\2\x{1031}"},{" \x{1037}","\x{1037}"}]
	end

	"""
    Convert Unicode to Zawgyi
    """
	def uni2zg(text) do
		check(uni_to_zawgyi_rules(), text)
	end

	"""
    Convert Zawgyi to Unicode
    """
	def zg2uni(text) do
		check(zawgyi_to_uni_rules(), text)
	end

	defp check([], text) do
		text
	end

	defp check([head|tail], text) do
		{_, rule} = Regex.compile(elem(head, 0), [:unicode])
		text = Regex.replace(rule, text, elem(head, 1))
		check(tail, text)
	end
end