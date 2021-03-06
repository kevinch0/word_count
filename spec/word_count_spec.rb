require('rspec')
require('word_count')
require('pry')

  describe('String#word_count') do

    it("count number of i") do
      expect(("i am ian i like football").word_count('i')).to eq(2)
    end

    it("count number of ian") do
      expect(("i am ian i like football").word_count('ian')).to eq(1)
    end

    it("count number of I with case difference") do
      expect(("I am ian i like football").word_count('i')).to eq(2)
    end

    it("count example provided by moringa prep") do
      expect(("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?").word_count('peck')).to eq(2)
    end

    it("count number of I removing punctuation") do
      expect(("I(Kevin) am a rockstar!I am goooood!").word_count('i')).to eq(2)
    end

    it("count number of I in sentence and inside words") do
      expect(("I am interested in yomama and wii").count_everything('i')).to eq(4)
    end

    it("count number of is in sentence and insite words") do
      expect(("You belive in islam? Ian exclaimed blissfully").count_everything('is')).to eq(2)
    end

    it("count number of I in sentence and inside words") do
      expect(("I’m taking my cat on a walk through the catacombs").count_everything('cat')).to eq(2)
    end

  end
