describe 'ua_1a_class_size' do
  it 'takes an argument of 2 numbers (class size and new students) and adds them together to make the new class size.' do
      expect(ua_1a_class_size(19, 3)).to eql(22)
  end
end

describe 'todays_class_schedule' do
  it 'takes an argument of an array and returns the array.' do
  classes = ["Math", "Science", "Hero Lessons", "History"]
  expect(todays_class_schedule(classes)).to eq(classes)
  end
end

describe 'student_quirks' do
  it 'returns a hash that uses students hero names as keys and their quirks as values.' do
    expect(student_quirks).to be_a(Hash)
    expect(student_quirks.keys.count).to_not eq(0)
  end
  it 'keys should be represented as Symbols' do
    expect(student_quirks.keys).to match_array([:deku, :froppy, :tsukuyomi, :creati])
  end
  it 'values should be their quirks written as strings' do
      expect(student_quirks.values).to match_array(["One for All", "Frog", "Dark Shadow", "Creation"])
  end
end