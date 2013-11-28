class Angryman < ActiveRecord::Base
	acts_as_avatarable

	has_many :systems

	def push
		puts "add to changeset"
	end

	def developer_submit
		puts "review code"
	end

	def review_pass
		puts "check every reviewer pass"
	end

	def review_not_pass
		puts 'review not pass, to reopen'
	end

	def test_pass
		puts "test pass, to merge"
	end

	def test_not_pass
		puts 'test not pass, to reopen'
	end

	def merge_success
		puts 'merge success, resolve'
	end

	def merge_failed
		puts 'merge failed, to reopen'
	end	
end
