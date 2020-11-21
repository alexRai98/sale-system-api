require 'roo'

ods = Roo::Spreadsheet.open('./db/data.ods')
header =  ods.sheet(0).row(1)
data =[]
ods.sheet(0).map{|row| 
  hash = {}
  header.each_with_index{ |head,index|
    hash[head.to_sym] = row[index]
  }
  data << hash
}
data.shift
p data