
class Apptodo {
    User? user;

    Apptodo({this.user});

    Apptodo.fromJson(Map<String, dynamic> json) {
        this.user = json["user"] == null ? null : User.fromJson(json["user"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if(this.user != null)
            data["user"] = this.user?.toJson();
        return data;
    }
}

class User {
    int? id;
    String? username;
    String? email;
    String? provider;
    bool? confirmed;
    bool? blocked;
    Role? role;

    User({this.id, this.username, this.email, this.provider, this.confirmed, this.blocked, this.role});

    User.fromJson(Map<String, dynamic> json) {
        this.id = json["id"];
        this.username = json["username"];
        this.email = json["email"];
        this.provider = json["provider"];
        this.confirmed = json["confirmed"];
        this.blocked = json["blocked"];
        this.role = json["role"] == null ? null : Role.fromJson(json["role"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["id"] = this.id;
        data["username"] = this.username;
        data["email"] = this.email;
        data["provider"] = this.provider;
        data["confirmed"] = this.confirmed;
        data["blocked"] = this.blocked;
        if(this.role != null)
            data["role"] = this.role?.toJson();
        return data;
    }
}

class Role {
    int? id;
    String? name;
    String? description;
    String? type;

    Role({this.id, this.name, this.description, this.type});

    Role.fromJson(Map<String, dynamic> json) {
        this.id = json["id"];
        this.name = json["name"];
        this.description = json["description"];
        this.type = json["type"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["id"] = this.id;
        data["name"] = this.name;
        data["description"] = this.description;
        data["type"] = this.type;
        return data;
    }
}


