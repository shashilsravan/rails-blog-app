module HomeHelper
    def get_image_url(user_id)
        user = User.find(user_id)
        return user.image
    end

    def get_name(user_id)
        user = User.find(user_id)
        return user.name
    end

    def get_path(user_id)
        user = User.find(user_id)
        return user
    end
end
