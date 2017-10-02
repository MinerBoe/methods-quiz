require './test_setup'
require './methods_quiz'

# TODO - write tests here
describe 'methods_quiz' do

	describe 'has_teen?' do

		it 'all are teens return true' do
			has_teen?(15, 15, 15).must_equal(true)
		end

		it 'no teens return false' do
			has_teen?(12, 20, 100).must_equal(false)
		end

		it 'one teen return true' do
			has_teen?(15, 20, 12).must_equal(true)
		end

		it 'one teen is first endpoint return true' do
			has_teen?(13, 20, 20).must_equal(true)
		end

		it 'one teen is last endpoint return true' do
			has_teen?(20, 19, 20).must_equal(true)
		end

	end

	describe 'not_string' do
		it 'hello return nothello' do
			not_string('hello').must_equal('nothello')
		end
		it 'notapples return string unchanged' do
			not_string('notapples').must_equal('notapples')
		end
		it 'capital Notoranges return string unchanged' do
			not_string('Notoranges').must_equal('Notoranges')
		end
	end

	describe 'icy_hot?' do
		it 'both are icy return false' do
			icy_hot?(-10, -16).must_equal(false)
		end
		it 'both are hot return false' do
			icy_hot?(116, 110).must_equal(false)
		end
		it 'both are not icy or hot return false' do
			icy_hot?(50, 75).must_equal(false)
		end
		it 'one is icy but the other is not hot return false' do
			icy_hot?(-10, 50).must_equal(false)
		end
		it 'one is hot but the other is not icy return false' do
			icy_hot?(40, 119).must_equal(false)
		end
		it 'one is icy and one is hot return true' do
			icy_hot?(-20, 119).must_equal(true)
		end
	end

	describe 'closer_to' do
		it 'both values are the same distance return 0' do
			closer_to(10, 20, 20).must_equal(0)
		end
		it 'a is closer return a' do
			closer_to(15, 17, 19).must_equal(17)
		end
		it 'b is closer return b' do
			closer_to(18, 10, 19).must_equal(19)
		end
		it 'a is closer but under guess return a' do
			closer_to(20, 18, 23).must_equal(18) 
		end
		it 'b is closer but under guess return b' do
			closer_to(20, 23, 18).must_equal(18) 
		end
	end

	describe 'two_as_one?' do
		it 'first two equal third return true' do
			two_as_one?(1, 2, 3).must_equal(true)
		end
		it 'last two equal first return true' do
			two_as_one?(3, 2, 1).must_equal(true)
		end
		it 'no pair equals a value return false' do
			two_as_one?(4, 7, 100).must_equal(false)
		end
		it 'end values equal middle' do
			two_as_one?(1, 3, 2).must_equal(true)
		end
	end
end
