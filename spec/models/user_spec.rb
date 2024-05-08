require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '000000', password_confirmation: '000000',last_name: 'test', first_name: 'test',last_name_kana: 'test',first_name_kana: 'test',birthday: '00/00/00',)
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      user = User.new(nickname: 'test', email: '', password: '000000', password_confirmation: '000000',last_name: 'test', first_name: 'test',last_name_kana: 'test',first_name_kana: 'test',birthday: '00/00/00',)
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it 'passwordが空では登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '', password_confirmation: '000000',last_name: 'test', first_name: 'test',last_name_kana: 'test',first_name_kana: 'test',birthday: '00/00/00',)
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it 'password_comfirmationが空では登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '',last_name: 'test', first_name: 'test',last_name_kana: 'test',first_name_kana: 'test',birthday: '00/00/00',)
      user.valid?
      expect(user.errors.full_messages).to include("Password_confirmation can't be blank")
    end
    it 'last_nameが空では登録できない' do
      user = User.new(nickname: 'test', email: 'test@example', password: '000000', password_confirmation: '000000',last_name: '', first_name: 'test',last_name_kana: 'test',first_name_kana: 'test',birthday: '00/00/00',)
      user.valid?
      expect(user.errors.full_messages).to include("Last_name can't be blank")
    end


end
