def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end


get '/' do
    @post_shark = { 
        username: "sharky_j",
        avatar_url: "http://naserca.com/images/sharky_j.jpg",
        photo_url: "http://naserca.com/images/shark.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "sharky_j",
            text: "Out for the long weekend... too embarrassed to show y'all the beach bod!"
            }]
        }
        
    @post_whale = { 
        username: "shark_cat",
        avatar_url: "https://www.thesun.co.uk/wp-content/uploads/2017/02/nintchdbpict000299636622.png?strip=all&w=960",
        photo_url: "https://media.giphy.com/media/LyyD3b2vTQUBW/giphy.gif",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "shark_cat",
            text: "Shark eats cat.."
            }, {
            username: "flip",
            text: "Oh No!"    
            }]
        }
        
        @post_marlin = { 
        username: "swimmer_123",
        avatar_url: "http://clipartandscrap.com/wp-content/uploads/2017/07/Free-shark-clipart-clip-art-pictures-graphics-illustrations.jpg",
        photo_url: "http://dreamstop.com/wp-content/uploads/2016/08/Shark-Dream.jpg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "swimmer_123",
            text: "Great day for a swim!"
            }]
        }
        
        
    #  [@post_shark, @post_whale, @post_marlin].to_s
     
     @posts = [@post_shark, @post_whale, @post_marlin]
     
  erb(:index)
end


