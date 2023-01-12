control "Training-1.0" do                                     # A unique ID for this control
  impact 1.0                                                  # Just how critical is
  title "Training Session"                                    # Readable by a human
  desc "Text should include the words 'Training Session'."    # Optional description
  describe file('training.txt') do                            # The actual test
   its('content') { should match 'Training Session' }         # You could just do the "describe file" block if you want. The  
  end                                                         # rest is just metadata, but it's a good habit to get into.
end
