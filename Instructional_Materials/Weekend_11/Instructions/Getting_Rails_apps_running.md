# Get a Rails app running

### Instructions
1. Download the app from the GitHub repository. Start by creating a folder for the files, then run 'git init' in that folder. You'll then run 'git clone [repository]'.
2. Go into the folder (cd), then get into the vet_app-1 folder. Run the command 'bundle install' in the terminal. This will set up the necessary gems for the app.
3. Run the command 'rake db:migrate', which will set up the necessary database tables.

You should be ready to use the app!

### Tips for using Rails

1) To start your app, go to its main directory; in this case, you need to go to the vet_app-1 folder. Enter 'rails server' on the command line (or you can shorten that to 'rails s'). Your app should load locally on port 3000. You can see if it worked by opening a browser page to localhost:3000.

2) You will likely want to keep one terminal window open so that your server can continue running and another to use when working with your app. When you're finished developing, make sure to stop the server from running (otherwise, you could run into problems when you start your server again because it thinks your original session is still running). You can terminate the Rails server with CTRL-C from the command line.

3) If you need to do some troubleshooting within your app, one of the tools you can use is the Rails console. To get a Rails session running, go to the main directory (the same place where you start your app with 'rails server', so in this case vet_app-1) and enter 'rails console.' You're now in an interactive environment (irb) with your app. We'll use this tool later to examine the records we have in our app's database. To leave a Rails console session, type 'exit.'

	You can also use pry if you need it to 'pause' your code and interact with it. You need to add the pry gem to your Gemfile in the app, then rerun 'bundle install' to add your new gem. You'll also need to restart the server to make pry work, then you can use it the same way that we did to debug Ruby.
	
	As you get more familiar with Rails, you may want to add more gems to your app. To make them work, you'll need to rerun 'bundle install' any time you make a change to the Gemfile. Gemfiles are helpful because they ensure that anyone else who downloads and works on your app will have the same versions of the gems.

4) Rails also provides helpful error messages if something is set up incorrectly in the app. You can navigate to the page you are working on and see what the message is in your browser. If you can't figure out what the issue is, try looking on Stack Overflow or another help site to see what other people have done to solve the problem.
