1.users table
 name,email and password

2. create migration
3. create the controller (simple_auth(index,login,check),app_auth(sign,index,login))
4. views. ()

-> Basic Authentication

-> each request made you the username and password.

get http://user_name:password@localhost:3000

get http://user_name:password@localhost:3000/orders

postgresql://[user_name]:[YOUR-PASSWORD]@db.wzsklrouypojzebrhelh.supabase.co:5432/postgres

//unsafe server ->env.file


--------------------
-> Sessions or Cookies

-> login you create a session for this person.
email and password and create a key based on this.


-> for each request this person needs to provide this sesssion or cookies
in the headers.
-> login 

-Session will be deleted when you close browser.

User=>

    sign up
    login 
    index [all of our items]
    order [all of our orders]

Items =>

cart => items to cart
=> item_id
=> user_id
=> qty 

wishlist => user_wish list

// controller login ,index(all items), cart(items)
// add to cart=>

->stepts
->items table and the cart table

name ,price 



=> Jwt (json web Token)

=> user_id=>decode the info a token from that

=> when generating a token=> you sign based a secret 
--------------dont share the secret key with anybody
=> jwt token should be non sentive
=> when decoding the token => you decode with the secrect key

=> in conjuction with bcrypt(hash a password) =>12345 =>zxc2343 ,12345=>34szsdf45
