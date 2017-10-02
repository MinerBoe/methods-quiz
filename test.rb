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


end
