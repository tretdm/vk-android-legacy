.class public Lcom/vkontakte/android/api/GetFullProfile;
.super Lcom/vkontakte/android/APIRequest;
.source "GetFullProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetFullProfile$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

.field uid:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "photoCount"    # I

    .prologue
    .line 28
    if-lez p1, :cond_0

    const-string v0, "execute.getFullProfileNew"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 29
    if-lez p1, :cond_1

    .line 30
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 33
    :goto_1
    iput p1, p0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    .line 34
    const-string v0, "photo_count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void

    .line 28
    :cond_0
    const-string v0, "execute.getFullGroupNew"

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 359
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/GetFullProfile$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 361
    check-cast v1, [Ljava/lang/Object;

    .line 362
    .local v1, "res":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/vkontakte/android/api/ExtendedUserProfile;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/GetFullProfile$Callback;->success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 47
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    const-string v43, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 346
    :goto_0
    return-object v43

    .line 43
    :cond_0
    new-instance v11, Lcom/vkontakte/android/api/ExtendedUserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/api/ExtendedUserProfile;-><init>()V

    .line 44
    .local v11, "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    new-instance v43, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v43 .. v43}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    .line 45
    const-string v43, "screen_name"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "id"

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v43, v0

    if-lez v43, :cond_3e

    .line 47
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    const-string v44, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 48
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    const-string v44, "first_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 49
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    const-string v44, "last_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 50
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 51
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    sget v43, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v45, 0x3f800000    # 1.0f

    cmpl-float v43, v43, v45

    if-lez v43, :cond_22

    const-string v43, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 52
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    const-string v43, "friend_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    const/16 v45, 0x3

    move/from16 v0, v43

    move/from16 v1, v45

    if-ne v0, v1, :cond_23

    const/16 v43, 0x1

    :goto_2
    move/from16 v0, v43

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 54
    const-string v43, "photo_max"

    const-string v44, "photo_medium_rec"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 55
    const-string v43, "activity"

    const-string v44, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 56
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    const-string v43, "sex"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    const/16 v45, 0x1

    move/from16 v0, v43

    move/from16 v1, v45

    if-ne v0, v1, :cond_24

    const/16 v43, 0x1

    :goto_3
    move/from16 v0, v43

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 57
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v44

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v5, "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v43, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 61
    .local v14, "jcities":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_25

    .line 65
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v8, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v43, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 67
    .local v15, "jcountries":Lorg/json/JSONArray;
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_26

    .line 72
    const-string v43, "can_write_private_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_27

    const/16 v43, 0x1

    :goto_6
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canWrite:Z

    .line 73
    const-string v43, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    const/16 v43, 0x1

    :goto_7
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    .line 74
    const-string v43, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_29

    const/16 v43, 0x1

    :goto_8
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 75
    const-string v43, "all"

    const-string v44, "wall_default"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    .line 76
    const-string v43, "can_call"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2a

    const/16 v43, 0x1

    :goto_9
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canCall:Z

    .line 77
    const-string v43, "blacklisted_by_me"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2b

    const/16 v43, 0x1

    :goto_a
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 79
    const-string v43, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    .line 80
    const-string v43, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 81
    const-string v43, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "id"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    .line 82
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v44

    const-string v45, "first_name"

    invoke-virtual/range {v44 .. v45}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v44

    const-string v45, "last_name"

    invoke-virtual/range {v44 .. v45}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartnerName:Ljava/lang/String;

    .line 85
    :cond_1
    const-string v43, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2

    .line 86
    const-string v43, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v44, "\\."

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "bd":[Ljava/lang/String;
    const/16 v43, 0x0

    aget-object v43, v4, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    .line 88
    const/16 v43, 0x1

    aget-object v43, v4, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    .line 89
    array-length v0, v4

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_2

    .line 90
    const/16 v43, 0x2

    aget-object v43, v4, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    .line 93
    .end local v4    # "bd":[Ljava/lang/String;
    :cond_2
    const-string v43, "first_name_dat"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    .line 94
    const-string v43, "first_name_gen"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    .line 95
    const-string v43, "first_name_ins"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameIns:Ljava/lang/String;

    .line 96
    const-string v43, "first_name_acc"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    .line 97
    const-string v43, "last_name_dat"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameDat:Ljava/lang/String;

    .line 98
    const-string v43, "last_name_gen"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameGen:Ljava/lang/String;

    .line 99
    const-string v43, "last_name_ins"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameIns:Ljava/lang/String;

    .line 100
    const-string v43, "last_name_acc"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    .line 102
    const-string v43, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_3

    const-string v43, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_3

    .line 103
    const-string v43, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "title"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 104
    const-string v43, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "title"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->country:Ljava/lang/String;

    .line 107
    :cond_3
    const-string v43, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_4

    const-string v43, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_4

    .line 108
    const-string v43, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    .line 109
    :cond_4
    const-string v43, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_5

    const-string v43, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_5

    .line 110
    const-string v43, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    .line 111
    :cond_5
    const-string v43, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_6

    .line 112
    const-string v43, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    .line 113
    :cond_6
    const-string v43, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_7

    .line 114
    const-string v43, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    .line 115
    :cond_7
    const-string v43, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_8

    .line 116
    const-string v43, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    .line 117
    :cond_8
    const-string v43, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_9

    const-string v43, "facebook"

    const-wide/16 v44, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v43

    const-wide/16 v45, -0x1

    cmp-long v43, v43, v45

    if-eqz v43, :cond_9

    .line 118
    const-string v43, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v43

    move-wide/from16 v0, v43

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookId:J

    .line 119
    const-string v43, "facebook_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    .line 121
    :cond_9
    const-string v43, "instagram"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_a

    .line 122
    const-string v43, "instagram"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    .line 124
    :cond_a
    const-string v43, "friend_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 126
    const-string v43, "schools"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 127
    .local v35, "schools":Lorg/json/JSONArray;
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    .line 128
    if-eqz v35, :cond_b

    .line 129
    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_2c

    .line 143
    :cond_b
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    .line 144
    const-string v43, "universities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v41

    .line 145
    .local v41, "univers":Lorg/json/JSONArray;
    if-eqz v41, :cond_c

    .line 146
    const/4 v13, 0x0

    :goto_c
    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_2d

    .line 160
    :cond_c
    const-string v43, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_d

    const-string v43, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_d

    .line 161
    const-string v43, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    .line 162
    :cond_d
    const-string v43, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    const-string v43, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_e

    .line 163
    const-string v43, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    .line 164
    :cond_e
    const-string v43, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_f

    const-string v43, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_f

    .line 165
    const-string v43, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    .line 166
    :cond_f
    const-string v43, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_10

    const-string v43, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_10

    .line 167
    const-string v43, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    .line 168
    :cond_10
    const-string v43, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_11

    const-string v43, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_11

    .line 169
    const-string v43, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    .line 170
    :cond_11
    const-string v43, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_12

    const-string v43, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_12

    .line 171
    const-string v43, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    .line 172
    :cond_12
    const-string v43, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_13

    const-string v43, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_13

    .line 173
    const-string v43, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 174
    :cond_13
    const-string v43, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_14

    const-string v43, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_14

    .line 175
    const-string v43, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    .line 176
    :cond_14
    const-string v43, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_15

    const-string v43, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_15

    .line 177
    const-string v43, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    .line 178
    :cond_15
    const-string v43, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_16

    const-string v43, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_16

    .line 179
    const-string v43, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    .line 180
    :cond_16
    const-string v43, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_17

    const-string v43, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_17

    .line 181
    const-string v43, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 183
    :cond_17
    const-string v43, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_30

    const/16 v43, 0x1

    :goto_d
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    .line 185
    const-string v43, "personal"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 186
    .local v27, "personal":Lorg/json/JSONObject;
    if-eqz v27, :cond_19

    .line 187
    const-string v43, "langs"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 188
    .local v25, "langs":Lorg/json/JSONArray;
    if-eqz v25, :cond_18

    .line 189
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v36, "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_31

    .line 193
    const-string v43, ", "

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    .line 195
    .end local v36    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    const-string v43, "political"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    .line 196
    const-string v43, "religion"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    .line 197
    const-string v43, "life_main"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    .line 198
    const-string v43, "people_main"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    .line 199
    const-string v43, "inspired_by"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    .line 200
    const-string v43, "smoking"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    .line 201
    const-string v43, "alcohol"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    .line 204
    .end local v25    # "langs":Lorg/json/JSONArray;
    :cond_19
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v32, "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v43, "relatives_profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 206
    .local v20, "jrelprofiles":Lorg/json/JSONArray;
    if-eqz v20, :cond_1a

    .line 207
    const/4 v13, 0x0

    :goto_f
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_32

    .line 219
    :cond_1a
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    .line 220
    const-string v43, "relatives"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    .line 221
    .local v33, "rels":Lorg/json/JSONArray;
    if-eqz v33, :cond_1b

    .line 222
    const/4 v13, 0x0

    :goto_10
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_35

    .line 245
    :cond_1b
    const-string v43, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1c

    .line 246
    const-string v43, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "time"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    .line 247
    const-string v43, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "platform"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v30

    .line 248
    .local v30, "platform":I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    const/16 v43, 0x3

    move/from16 v0, v30

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    const/16 v43, 0x5

    move/from16 v0, v30

    move/from16 v1, v43

    if-eq v0, v1, :cond_3c

    const/16 v43, 0x0

    :goto_11
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeenMobile:Z

    .line 251
    .end local v30    # "platform":I
    :cond_1c
    const-string v43, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1d

    .line 252
    const-string v43, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "dt":Ljava/lang/String;
    const-string v43, "banned"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3d

    .line 254
    const/16 v43, -0x1

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    .line 310
    .end local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "dt":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "jcities":Lorg/json/JSONArray;
    .end local v15    # "jcountries":Lorg/json/JSONArray;
    .end local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v27    # "personal":Lorg/json/JSONObject;
    .end local v32    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v33    # "rels":Lorg/json/JSONArray;
    .end local v35    # "schools":Lorg/json/JSONArray;
    .end local v41    # "univers":Lorg/json/JSONArray;
    :cond_1d
    :goto_12
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    .line 311
    const-string v43, "counters"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 312
    .local v7, "counters":Lorg/json/JSONObject;
    if-eqz v7, :cond_1e

    .line 313
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v24

    .line 314
    .local v24, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-nez v43, :cond_4d

    .line 319
    .end local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v43, v0

    if-gez v43, :cond_1f

    .line 320
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v43, v0

    const-string v44, "members"

    const-string v45, "members_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1f
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v29, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const-string v43, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_20

    const-string v43, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    if-eqz v43, :cond_20

    .line 325
    const-string v43, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v18, v0

    .line 326
    .local v18, "jphotos":Lorg/json/JSONArray;
    if-eqz v18, :cond_20

    .line 327
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_14
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v43

    if-lt v13, v0, :cond_4e

    .line 335
    .end local v13    # "i":I
    .end local v18    # "jphotos":Lorg/json/JSONArray;
    :cond_20
    const-string v43, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "audio"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_21

    .line 336
    const-string v43, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "audio"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 337
    .local v16, "jf":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 338
    .local v12, "file":Lcom/vkontakte/android/AudioFile;
    iput-object v12, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    .line 339
    new-instance v43, Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v44, " - "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v12, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 342
    .end local v12    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v16    # "jf":Lorg/json/JSONObject;
    :cond_21
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v11, v43, v44

    const/16 v44, 0x1

    aput-object v29, v43, v44
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 343
    .end local v7    # "counters":Lorg/json/JSONObject;
    .end local v11    # "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    .end local v29    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v42

    .line 344
    .local v42, "x":Ljava/lang/Exception;
    const-string v43, "vk"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 51
    .end local v42    # "x":Ljava/lang/Exception;
    .restart local v11    # "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    :cond_22
    :try_start_1
    const-string v43, "photo_rec"

    goto/16 :goto_1

    .line 52
    :cond_23
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 56
    :cond_24
    const/16 v43, 0x0

    goto/16 :goto_3

    .line 62
    .restart local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "i":I
    .restart local v14    # "jcities":Lorg/json/JSONArray;
    :cond_25
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 63
    .local v6, "city":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v44, "title"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 68
    .end local v6    # "city":Lorg/json/JSONObject;
    .restart local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "jcountries":Lorg/json/JSONArray;
    :cond_26
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 69
    .local v9, "country":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v44, "title"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 72
    .end local v9    # "country":Lorg/json/JSONObject;
    :cond_27
    const/16 v43, 0x0

    goto/16 :goto_6

    .line 73
    :cond_28
    const/16 v43, 0x0

    goto/16 :goto_7

    .line 74
    :cond_29
    const/16 v43, 0x0

    goto/16 :goto_8

    .line 76
    :cond_2a
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 77
    :cond_2b
    const/16 v43, 0x0

    goto/16 :goto_a

    .line 130
    .restart local v35    # "schools":Lorg/json/JSONArray;
    :cond_2c
    new-instance v34, Lcom/vkontakte/android/api/ExtendedUserProfile$School;

    invoke-direct/range {v34 .. v34}, Lcom/vkontakte/android/api/ExtendedUserProfile$School;-><init>()V

    .line 131
    .local v34, "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 132
    .local v21, "js":Lorg/json/JSONObject;
    const-string v43, "city"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 133
    const-string v43, "name"

    const-string v44, "???"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 134
    const-string v43, "year_from"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    .line 135
    const-string v43, "year_to"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    .line 136
    const-string v43, "year_graduated"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    .line 137
    const-string v43, "class"

    const/16 v44, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    .line 138
    const-string v43, "speciality"

    const/16 v44, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    .line 139
    const-string v43, "type_str"

    sget-object v44, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0801a8

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    .line 140
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 147
    .end local v21    # "js":Lorg/json/JSONObject;
    .end local v34    # "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    .restart local v41    # "univers":Lorg/json/JSONArray;
    :cond_2d
    new-instance v39, Lcom/vkontakte/android/api/ExtendedUserProfile$University;

    invoke-direct/range {v39 .. v39}, Lcom/vkontakte/android/api/ExtendedUserProfile$University;-><init>()V

    .line 148
    .local v39, "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 149
    .local v22, "ju":Lorg/json/JSONObject;
    const-string v43, "city"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->city:Ljava/lang/String;

    .line 150
    const-string v43, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 151
    const-string v43, "faculty_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2e

    .line 152
    const-string v43, "faculty_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    .line 153
    :cond_2e
    const-string v43, "chair_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2f

    .line 154
    const-string v43, "chair_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    .line 155
    :cond_2f
    const-string v43, "graduation"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v39

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    .line 156
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 183
    .end local v22    # "ju":Lorg/json/JSONObject;
    .end local v39    # "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    :cond_30
    const/16 v43, 0x0

    goto/16 :goto_d

    .line 191
    .restart local v25    # "langs":Lorg/json/JSONArray;
    .restart local v27    # "personal":Lorg/json/JSONObject;
    .restart local v36    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 208
    .end local v25    # "langs":Lorg/json/JSONArray;
    .end local v36    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .restart local v32    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_32
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 209
    .local v17, "jp":Lorg/json/JSONObject;
    new-instance v26, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v26 .. v26}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 210
    .local v26, "p":Lcom/vkontakte/android/UserProfile;
    const-string v43, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 211
    const-string v43, "first_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 212
    const-string v43, "last_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 213
    sget v43, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v43, v43, v44

    if-lez v43, :cond_33

    const-string v43, "photo_100"

    :goto_15
    const-string v44, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 214
    const-string v43, "sex"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_34

    const/16 v43, 0x1

    :goto_16
    move/from16 v0, v43

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 215
    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f

    .line 213
    :cond_33
    const-string v43, "photo_50"

    goto :goto_15

    .line 214
    :cond_34
    const/16 v43, 0x0

    goto :goto_16

    .line 223
    .end local v17    # "jp":Lorg/json/JSONObject;
    .end local v26    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v33    # "rels":Lorg/json/JSONArray;
    :cond_35
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 224
    .local v19, "jr":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 225
    .local v40, "uid":I
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_36

    .line 222
    :goto_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10

    .line 226
    :cond_36
    const-string v43, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 227
    .local v38, "type":Ljava/lang/String;
    new-instance v31, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;

    invoke-direct/range {v31 .. v31}, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;-><init>()V

    .line 228
    .local v31, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    .line 230
    const-string v43, "grandchild"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_38

    .line 231
    const/16 v43, 0x4

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    .line 241
    :cond_37
    :goto_18
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 232
    :cond_38
    const-string v43, "grandparent"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_39

    .line 233
    const/16 v43, 0x3

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_18

    .line 234
    :cond_39
    const-string v43, "child"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3a

    .line 235
    const/16 v43, 0x2

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_18

    .line 236
    :cond_3a
    const-string v43, "sibling"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3b

    .line 237
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_18

    .line 238
    :cond_3b
    const-string v43, "parent"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_37

    .line 239
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_18

    .line 248
    .end local v19    # "jr":Lorg/json/JSONObject;
    .end local v31    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v38    # "type":Ljava/lang/String;
    .end local v40    # "uid":I
    .restart local v30    # "platform":I
    :cond_3c
    const/16 v43, 0x1

    goto/16 :goto_11

    .line 255
    .end local v30    # "platform":I
    .restart local v10    # "dt":Ljava/lang/String;
    :cond_3d
    const-string v43, "deleted"

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1d

    .line 256
    const/16 v43, -0x2

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    goto/16 :goto_12

    .line 260
    .end local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "dt":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "jcities":Lorg/json/JSONArray;
    .end local v15    # "jcountries":Lorg/json/JSONArray;
    .end local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v27    # "personal":Lorg/json/JSONObject;
    .end local v32    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v33    # "rels":Lorg/json/JSONArray;
    .end local v35    # "schools":Lorg/json/JSONArray;
    .end local v41    # "univers":Lorg/json/JSONArray;
    :cond_3e
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 261
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    const-string v44, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 262
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    sget v43, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v45, 0x3f800000    # 1.0f

    cmpl-float v43, v43, v45

    if-lez v43, :cond_48

    const-string v43, "photo_100"

    :goto_19
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 263
    const-string v43, "photo_100"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 264
    const-string v43, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    .line 265
    const-string v43, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "text"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 266
    const-string v43, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 267
    const-string v43, "start_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    .line 268
    const-string v43, "end_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    .line 269
    const-string v43, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 271
    const-string v43, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_49

    const/16 v43, 0x1

    :goto_1a
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    .line 273
    const-string v43, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_42

    const-string v43, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_42

    .line 274
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v37, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v43, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_3f

    .line 276
    const-string v43, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3f
    const-string v43, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_40

    .line 278
    const/16 v43, 0x0

    const-string v44, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v37

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    :cond_40
    const-string v43, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_4a

    .line 280
    const-string v43, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 281
    .restart local v17    # "jp":Lorg/json/JSONObject;
    const-string v43, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_41

    .line 282
    const/16 v43, 0x0

    const-string v44, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v37

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 283
    :cond_41
    const-string v43, "latitude"

    const-wide v44, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v43

    move-wide/from16 v0, v43

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    .line 284
    const-string v43, "longitude"

    const-wide v44, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v43

    move-wide/from16 v0, v43

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    .line 288
    .end local v17    # "jp":Lorg/json/JSONObject;
    :goto_1b
    const-string v43, ", "

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 290
    .end local v37    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_42
    const-string v43, "is_member"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 291
    const-string v43, "is_closed"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    .line 292
    const-string v43, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_4b

    const/16 v43, 0x1

    :goto_1c
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 293
    const-string v43, "membership"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "invitation"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    if-lez v43, :cond_43

    .line 294
    const/16 v43, 0x2

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 296
    :cond_43
    const-string v43, "membership"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "request"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    if-lez v43, :cond_44

    .line 297
    const/16 v43, 0x3

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 299
    :cond_44
    const-string v43, "group"

    const-string v44, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_45

    .line 300
    const/16 v43, 0x0

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 301
    :cond_45
    const-string v43, "event"

    const-string v44, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_46

    .line 302
    const/16 v43, 0x1

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 303
    :cond_46
    const-string v43, "page"

    const-string v44, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_47

    .line 304
    const/16 v43, 0x2

    move/from16 v0, v43

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 305
    :cond_47
    const-string v43, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_4c

    const/16 v43, 0x1

    :goto_1d
    move/from16 v0, v43

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    .line 306
    const-string v43, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1d

    .line 307
    const-string v43, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    goto/16 :goto_12

    .line 262
    :cond_48
    const-string v43, "photo_50"

    goto/16 :goto_19

    .line 271
    :cond_49
    const/16 v43, 0x0

    goto/16 :goto_1a

    .line 286
    .restart local v37    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4a
    const-wide v43, -0x3f3e6c0000000000L    # -9000.0

    move-wide/from16 v0, v43

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    move-wide/from16 v0, v43

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    goto/16 :goto_1b

    .line 292
    .end local v37    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4b
    const/16 v43, 0x0

    goto/16 :goto_1c

    .line 305
    :cond_4c
    const/16 v43, 0x0

    goto :goto_1d

    .line 315
    .restart local v7    # "counters":Lorg/json/JSONObject;
    .restart local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 316
    .local v23, "k":Ljava/lang/String;
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v43, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 328
    .end local v23    # "k":Ljava/lang/String;
    .end local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "i":I
    .restart local v18    # "jphotos":Lorg/json/JSONArray;
    .restart local v29    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_4e
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 329
    .restart local v17    # "jp":Lorg/json/JSONObject;
    new-instance v28, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 330
    .local v28, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_14
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetFullProfile$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetFullProfile$Callback;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    .line 351
    return-object p0
.end method
