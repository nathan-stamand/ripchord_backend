class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :chords, :user_id
end