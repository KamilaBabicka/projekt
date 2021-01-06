-- Jakie ubezpieczenie posiada dany model auta?
SELECT samochody.id, samochody.marka, samochody.model, ubezpieczenia.oc, ubezpieczenia.ac, ubezpieczenia.assistance, ubezpieczenia.nnw 
FROM samochody INNER JOIN ubezpieczenia ON samochody.ubezpieczenie=ubezpieczenia.kod
ORDER BY id;