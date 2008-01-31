require 'rubygems'
require 'spec'

$LOAD_PATH.unshift('ext')
require 'pg'

describe PGconn do

	before( :all ) do
		puts "======  TESTING PGresult  ======"
		@test_directory = "#{Dir.getwd}/tmp_test_#{rand}"
		@test_pgdata = @test_directory + '/data'
		if File.exists?(@test_directory) then
			raise "test directory exists!"
		end
		@conninfo = "host='#{@test_directory}' dbname=test"
		Dir.mkdir(@test_directory)
		Dir.mkdir(@test_pgdata)
		cmds = []
		cmds << "initdb -D '#{@test_pgdata}'"
		cmds << "pg_ctl -D '#{@test_pgdata}' " + 
			%!-o "--unix-socket-directory='#{@test_directory}'" ! + 
			"start"
		cmds << "sleep 2"
		cmds << "createdb -h '#{@test_directory}' test"
		cmds.each do |cmd|
			if not system(cmd) then
				raise "Error executing cmd: #{cmd}: #{$?}"
			end
		end
		puts "\n\n"
		@conn = PGconn.connect(@conninfo)
	end

	it "should act as an array of hashes" do
		res = @conn.exec("SELECT 1 AS a, 2 AS b")
		res[0]['a'].should== '1'
		res[0]['b'].should== '2'
	end

	it "should return NULL as nil" do
		res = @conn.exec("SELECT 1 AS a, NULL AS b")
		res[0]['b'].should == nil
	end

	after( :all ) do
		puts ""
		puts "======  COMPLETED TESTING PGresult  ======"
		@conn.finish
		cmds = []
		cmds << "pg_ctl -D '#{@test_pgdata}' stop"
		cmds << "rm -rf '#{@test_directory}'"
		cmds.each do |cmd|
			if not system(cmd) then
				raise "Error executing cmd: #{cmd}: #{$?}"
			end
		end
	end
end