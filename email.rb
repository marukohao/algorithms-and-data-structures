
# //email
# //You are asked to collect user emails, however as a security measure
# //You will only accept emails from specific providers 
# //gmail, outlook, yahoo, aol, hotmail 
# //return an object with the keys of the provider with the value of the users info without the provider 
# //if the user does not have one of the approved email providers return false

# //in: bob@notavirus.com
# //out: false 

# //in: coolCat@gmail.com
# //out: {gmail:coolCat}

# //in: GayleLM@hotmail.com
# //out: {hotmail:gayleLM}

def check_email(email)
  username = email.split("@")
  email_substi = username[1].split(".")
  hash = {}
  key = email_substi[0]
  providers = ["gmail", "outlook", "yahoo", "aol", "hotmail"]
  if providers.include?(email_substi[0])
    hash[key] = username[0]
  else
    return false
  end
  return hash
end

