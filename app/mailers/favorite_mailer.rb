class FavoriteMailer < ActionMailer::Base
  
  default from: "steve.barnesjr@yahoo.com"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    headers["Message-ID"] = "<comments/#{@comment.id}@bloccit2.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@bloccit2.example>"
    headers["References"] = "<post/#{@post.id}@bloccit2.example>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
