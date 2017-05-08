class FavoriteMailer < ApplicationMailer
  default from: "lisajmin@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@Bloccit>"
    headers["In-Reply-To"] = "<post/#{post.id}@Bloccit>"
    headers["References"] = "<post/#{post.id}@Bloccit>"

    @user = user
    @post = post
    @comment = comment

    mail(to:user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<post/#{post.id}@Bloccit>"
    headers["In-Reply-To"] = "<post/#{post.id}@Bloccit>"
    headers["References"] = "<post/#{post.id}@Bloccit>"

    @post = post

    mail(to:post.user.email, subject: "You're following, #{post.title}!")
  end
end
