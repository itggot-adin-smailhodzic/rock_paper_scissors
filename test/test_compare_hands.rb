require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/rock_paper_scissors'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'compare_hands' do

  it 'should take player_1_hand: and player_2_hand: as named arguments' do
    proc{ compare_hands()                 }.must_raise ArgumentError
    proc{ compare_hands('scissors')       }.must_raise ArgumentError
    proc{ compare_hands('rock', 'paper')  }.must_raise ArgumentError
  end

  it 'should return the correct results when player 1 has picked rock' do
    compare_hands(player_1_hand: 'rock', player_2_hand: 'rock').must_equal 'tie'
    compare_hands(player_1_hand: 'rock', player_2_hand: 'paper').must_equal 'player_2'
    compare_hands(player_1_hand: 'rock', player_2_hand: 'scissors').must_equal 'player_1'
  end

  it 'should return the correct results when player 1 has picked paper' do
    compare_hands(player_1_hand: 'paper', player_2_hand: 'paper').must_equal 'tie'
    compare_hands(player_1_hand: 'paper', player_2_hand: 'scissors').must_equal 'player_2'
    compare_hands(player_1_hand: 'paper', player_2_hand: 'rock').must_equal 'player_1'
  end

  it 'should return the correct results when player 1 has picked scissors' do
    compare_hands(player_1_hand: 'scissors', player_2_hand: 'scissors').must_equal 'tie'
    compare_hands(player_1_hand: 'scissors', player_2_hand: 'rock').must_equal 'player_2'
    compare_hands(player_1_hand: 'scissors', player_2_hand: 'paper').must_equal 'player_1'
  end

end