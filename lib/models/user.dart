class UserModel {
  final String? login;
  final String? name;
  final int? id;
  final String? avatarUrl; //avatar_url
  final int? publicRepos; // public_repos
  final int? followers;
  final int? following;
  final String? twitterUsername; //twitter_username
  final String? location;
  final String? createdAt; //created_at
  final String? bio;
  final String? company;
  final String? blog;

  UserModel(
      {this.login,
      this.name,
      this.id,
      this.avatarUrl,
      this.publicRepos,
      this.followers,
      this.following,
      this.twitterUsername,
      this.location,
      this.createdAt,
      this.bio,
      this.company,
      this.blog});


   factory UserModel.fromJSON(Map<String,dynamic>jsonMap){
    final result = UserModel(
      login: jsonMap['login'],
      name: jsonMap['name'],
      id: jsonMap['id'],
      avatarUrl:jsonMap['avatar_url'],
      publicRepos:jsonMap['public_repos'],
      followers:jsonMap['followers'],
      following:jsonMap['following'],
      twitterUsername:jsonMap['twitter_username'],
      location:jsonMap['location'],
      createdAt:jsonMap['created_at'],
      bio:jsonMap['bio'],
      company:jsonMap['company'],
      blog:jsonMap['blog']
    );
    return result;
  }
}


