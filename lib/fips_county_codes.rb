module FipsCountyCodes
  fips = {}
  state_county = {}

  File.open('lib/national.txt') do |f|
    f.readline # skip the first line with headers

    until f.eof
      row = f.readline.chomp.split(',')
      state, state_code, county_code, county, class_code_ignored = row

      fips[state] = {} if not fips.member?(state)

      fips_code = (state_code + county_code).to_i
      fips[state][county] = fips_code

      county2 = county.gsub(' County', '')
      fips[state][county2] = fips_code if county != county2

      state_county[fips_code] = [state, county]
    end
  end

  FIPS = fips
  STATE_COUNTY = state_county
end

