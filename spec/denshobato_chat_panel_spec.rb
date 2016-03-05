require 'spec_helper'

describe DenshobatoChatPanel do
  before :each do
    @duck = Duck.create(name: 'Steve')
  end

  it 'has a version number' do
    expect(DenshobatoChatPanel::VERSION).not_to be nil
  end

  describe '#full_name' do

    it 'expect default full_name to model name' do
      expect(@duck.full_name).to eq 'Duck'
    end

    it 'custom full_name' do
      Duck.class_eval do
        def full_name
          'Donalnd Duck'
        end
      end

      expect(@duck.full_name).to eq 'Donalnd Duck'
    end
  end

  describe '#image' do
    it 'expect default image with gravatar format, when model don`t have email field' do
      expect(@duck.image).to eq 'https://secure.gravatar.com/avatar/e13743a7f1db7f4246badd6fd6ff54ff/?d=mm'
    end

    it 'custom image' do
      Duck.class_eval do
        def image
          'cat.jpg'
        end
      end

      expect(@duck.image).to eq 'cat.jpg'
    end
  end
end
