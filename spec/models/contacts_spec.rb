require 'rails_helper'

describe Contact do
  #名前とメールアドレスと問い合わせ内容があれば有効な状態であること
  it "is valid with name and email and content" do
    contact = Contact.new(name: '中沢良浩', email: 'email@mail.com', content: '今日は雪が降りますか？')
    expect(contact).to be_valid
  end

  #名前がなければ無効な状態であること
  it "is invalid without a name" do
    contact = Contact.new(email: 'email@mail.com', content: '今日は雪が降りますか？')
    expect(contact).not_to be_valid
  end

  #名前がなければ無効な状態であること
  it "is invalid without a name" do
    contact = Contact.new(email: 'email@mail.com', content: '今日は雪が降りますか？')
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
  end

  #メールアドレスがなければ無効な状態であること
  it "is invalid without a email" do
    contact = Contact.new(name: '中沢良浩', content: '今日は雪が降りますか？')
    expect(contact).not_to be_valid
  end

  #メールアドレスがなければ無効な状態であること
  it "is invalid without a email" do
    contact = Contact.new(name: '中沢良浩', content: '今日は雪が降りますか？')
    contact.valid?
    expect(contact.errors[:email]).to include("を入力してください")
  end

  #問い合わせ内容がなければ無効な状態であること
  it "is invalid without a content" do
    contact = Contact.new(name: '中沢良浩', email: 'email@mail.com')
    expect(contact).not_to be_valid
  end

  #問い合わせ内容がなければ無効な状態であること
  it "is invalid without a content" do
    contact = Contact.new(name: '中沢良浩', email: 'email@mail.com')
    contact.valid?
    expect(contact.errors[:content]).to include("を入力してください")
  end

end
