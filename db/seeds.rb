user_1 = User.create(username: "holla_at_yaboi", password: "whimpery_ghost")
user_2 = User.create(username: "large_mick_nrg", password: "65yearoldwoman")
user_3 = User.create(username: "Mystery.Q", password: "mistyqal1_2009")

song_1 = user_1.songs.create(title: "iss that issh", chords: "[Am, Dm]")
song_2 = user_1.songs.create(title: "tha feat", chords: "[E, Gm, B7]")
song_3 = user_3.songs.create(title: "I Do Not Work Out", chords: "[BbM7, Eb, Ebm]")