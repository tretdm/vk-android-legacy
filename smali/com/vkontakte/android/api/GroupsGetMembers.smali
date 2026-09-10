.class public Lcom/vkontakte/android/api/GroupsGetMembers;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsGetMembers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsGetMembers$Callback;
    }
.end annotation


# static fields
.field private static CODE:Ljava/lang/String;


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "var l=API.groups.getMembers({gid:\"%1$d\",offset:%2$d,count:%3$d});return {count:l.count,users:API.users.get({uids:l.users,fields:\"online,%4$s\"})};"

    sput-object v0, Lcom/vkontakte/android/api/GroupsGetMembers;->CODE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 19
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v1, "code"

    sget-object v2, Lcom/vkontakte/android/api/GroupsGetMembers;->CODE:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/GroupsGetMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetMembers$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsGetMembers$1;-><init>(Lcom/vkontakte/android/api/GroupsGetMembers;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsGetMembers;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void

    .line 20
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 36
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v4, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "users"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 51
    .end local v1    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    if-eqz v5, :cond_1

    .line 52
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/vkontakte/android/api/GroupsGetMembers$Callback;->success(ILjava/util/Vector;)V

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    :goto_1
    return-void

    .line 40
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 42
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const-string v5, "first_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 43
    const-string v5, "last_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 45
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    const-string v5, "photo_medium_rec"

    :goto_2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 46
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 47
    const-string v5, "online"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, v3, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_3
    const-string v5, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 47
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 53
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    .line 59
    return-object p0
.end method
