# this file creates all of the seed data that the database will be created with

# TESTING - create a user
user1 = User.create(username: "Huangnandes", name: "Shawn Huang Fernandes")
user2 = User.create(username: "Fonzie", name: "Alfonso Pruneda Suarez")

# Create the Prompts for the first lesson
prompt1 = Prompt.create(
    title: 'Why?',
    header: 'Please Read The Following:',
    body: "Welcome to Compass! This program is designed to help you develop one of the greatest superpowers ever: PURPOSE.",
    category: "Reading"
)

prompt2 = Prompt.create(
    title: 'Know Your Why',
    header: "Please Watch The Following",
    body: "https://mod4-project.s3.us-east-2.amazonaws.com/0B+Video+Michael+Jr.%2C+Know+Your+Why+(Length_+3_49).mp4",
    category: "Video"
)

prompt3 = Prompt.create(
    title: 'A Purpose Interview',
    header: "The World's Hardest Questions",
    body: "What Are You Good At? What Do You Enjoy? What Needs In The World Activate You?",
    category: "Activity"
)

prompt4 = Prompt.create(
    title: 'What Is A Purpose Statement',
    header: "Finding Your Purpose",
    body: "Finding Key Phrases, Common Themes, and creating a Rough Draft",
    category: "Reading"
)

prompt5 = Prompt.create(
    title: 'Activity: Write A Purpose Statement',
    header: "Declaring Your Purpose",
    body: "Using the information you pulled from your purpose interview, what do you think your purpose is?",
    category: "Activity"
)

prompt6 = Prompt.create(
    title: 'Becoming A Purpose Champion',
    header: "Beginning Your Journey",
    body: "https://mod4-project.s3.us-east-2.amazonaws.com/0B+Video+Michael+Jr.%2C+Know+Your+Why+(Length_+3_49).mp4",
    category: "Video"
)






