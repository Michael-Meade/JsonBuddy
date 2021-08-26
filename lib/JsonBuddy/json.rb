require 'json'
class FileExists
	def initialize(file_path)
		@file_path = file_path
		if !File.exists?(@file_path)
			File.open(@file_path, "w") { |f| f.write("{}") }
		end
	end
end

class Json
	def initialize(file_path)
		@file_path = file_path
		# Create new file if it does not exist
		FileExists.new(@file_path)
	end
	def read_file
		# reads and returns the file
		return JSON.parse(File.read(@file_path))
	end
	def add_key(key, value)
		r = read_file.to_h
		r[key] = value
		File.open(@file_path, "w") { |f| f.write(r.to_json) }
	end
	def add(json)
		r = read_file.to_h
		r.merge!(json)
		File.open(@file_path, "w") { |f| f.write(r.to_json) }
	end
	def next_key(value)
		# if the last key was 10 then this method will
		# create a new key that has 11 as its key.
		r = read_file.to_h
		if r.keys.last.to_i.is_a? Integer
			new_key   = r.keys.last.to_i
			r[new_key += 1] = value
			File.open(@file_path, "w") { |f| f.write(r.to_json) }
		end
	end
	def change_value(key_to_change, value_change )
		r = read_file.to_h
		r[key_to_change] = value_change
		File.open(@file_path, "w") { |f| f.write(r.to_json) }
	end
	def add_number(key, number)
		if number.is_a? Integer or number.is_a? Float
			r      = read_file.to_h
			r[key] += number.to_f
			File.open(@file_path, "w") { |f| f.write(r.to_json) }
		end
	end
	def subtract_number(key, number)
		if number.is_a? Integer or number.is_a? Float
			r      = read_file.to_h
			r[key] -= number.to_f
			File.open(@file_path, "w") { |f| f.write(r.to_json) }
		end
	end
end
