# this file creates all of the seed data that the database will be created with

# TESTING - create a user
User.create(username: "Huangnandes", name: "Shawn Huang Fernandes")
User.create(username: "Fonzie", name: "Alfonso Pruneda Suarez")

# Create a curriculum
meaning_curriculum = Curriculum.create(name: "Meaning", progress: 0)

# Create the first lesson for this curriculum
intro_lesson = meaning_curriculum.create_lesson(title: "Introduction")

# Create the Prompts for the first lesson
prompt1 = intro_lesson.create_prompt(
    title: 'Reading: Welcome!',
    header: 'The Start Of Something Great',
    body: "Welcome to Compass! This program is designed to help you
            develop one of the greatest superpowers ever: PURPOSE.",
    category: "Reading"
)

prompt2 = intro_lesson.create_prompt(
    title: 'Reading: The Purpose Of Purpose',
    header: "Why is Purpose Important",
    body: "Would you ever set out sailing the ocean if you didn't have a map? Or a direction? Sounds pretty dangerous.
            You would most likely get lost, get frustrated, or worse. The ocean is a big place, with lots of challenges,
            and can change drastically over time. Life is even more complicated than the ocean, and yet so many people
            saunter about it without a direction. Purpose is how you can navigate through life with direction, but drawing your own
            'purpose' map and setting your own destinations is really challenging. Let's spend some time thinking about it.",
    category: "Reading"
)

prompt3 = intro_lesson.create_prompt(
    title: 'Video: Watch This',
    header: "Person Talking About Purpose",
    body: "https://www.ted.com/talks/larry_smith_why_you_will_fail_to_have_a_great_career?referrer=playlist-talks_to_help_you_find_your_pu#t-893988",
    category: "Video"
)

prompt4 = intro_lesson.create_prompt(
    title: 'Video: Watch That',
    header: "Another Great Purpose Talk",
    body: "https://www.ted.com/talks/amy_purdy_living_beyond_limits?referrer=playlist-talks_to_help_you_find_your_pu",
    category: "Video"
)

prompt5 = intro_lesson.create_prompt(
    title: 'Activity: Reflection',
    header: "What Does This Mean To You?",
    body: "So, what do you think your purpose in life is? Take some time to journal it!",
    category: "Activity"
)






