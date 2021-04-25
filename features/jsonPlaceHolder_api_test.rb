require 'airborne'

$baseUrl = 'https://jsonplaceholder.typicode.com/'
$endPoint = 'posts'

describe 'request to https://jsonplaceholder.typicode.com/posts' do
  it 'Validate types in body response' do
    get $baseUrl+$endPoint
    expect_status(200)
    expect_json_types('0', userId: :int, id: :int, title: :string, body: :string)
  end

  it 'Validate values in Json body' do
    get $baseUrl+$endPoint+'?id=2'
    expect_status(200)
    expect_json('0', userId: 1, id: 2, title: 'qui est esse')
  end

  it 'Validate no values when bad request' do
    get $baseUrl+$endPoint+'?id=0'
    expect_status(200)
    expect(body).to eql('[]')
  end

  it 'Validate Post method return status 201' do
    post $baseUrl+$endPoint, {:title => 'Ruby API testing', :userId => 1, :body => 'This post was made with Ruby'}
    expect_status(201)
    print('Posted Body:'+body)
    expect_json(userId: 1, title:'Ruby API testing', body: 'This post was made with Ruby')
  end
end