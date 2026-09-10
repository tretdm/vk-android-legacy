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
    .line 26
    if-lez p1, :cond_0

    const-string v0, "execute.getFullProfileNew"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    if-lez p1, :cond_1

    .line 28
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 31
    :goto_1
    iput p1, p0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    .line 32
    const-string v0, "photo_count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void

    .line 26
    :cond_0
    const-string v0, "execute.getFullGroupNew"

    goto :goto_0

    .line 30
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
    .line 347
    iget-object v2, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    if-nez v2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 350
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 351
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/GetFullProfile$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 353
    check-cast v1, [Ljava/lang/Object;

    .line 354
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
    .locals 46
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    :try_start_0
    const-string v42, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    .line 338
    :goto_0
    return-object v42

    .line 41
    :cond_0
    new-instance v11, Lcom/vkontakte/android/api/ExtendedUserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/api/ExtendedUserProfile;-><init>()V

    .line 42
    .local v11, "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    new-instance v42, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v42 .. v42}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    .line 43
    const-string v42, "screen_name"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "id"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v42, v0

    if-lez v42, :cond_3b

    .line 45
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    const-string v43, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 46
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    const-string v43, "first_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 47
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    const-string v43, "last_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 48
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    sget v42, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v42, v42, v44

    if-lez v42, :cond_21

    const-string v42, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 51
    const-string v42, "photo_max"

    const-string v43, "photo_medium_rec"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 52
    const-string v42, "activity"

    const-string v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 53
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    const-string v42, "sex"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    const/16 v44, 0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_22

    const/16 v42, 0x1

    :goto_2
    move/from16 v0, v42

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 54
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v5, "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v42, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 58
    .local v14, "jcities":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_23

    .line 62
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v8, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v42, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 64
    .local v15, "jcountries":Lorg/json/JSONArray;
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_24

    .line 69
    const-string v42, "can_write_private_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_25

    const/16 v42, 0x1

    :goto_5
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canWrite:Z

    .line 70
    const-string v42, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_26

    const/16 v42, 0x1

    :goto_6
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    .line 71
    const-string v42, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_27

    const/16 v42, 0x1

    :goto_7
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 72
    const-string v42, "all"

    const-string v43, "wall_default"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    .line 73
    const-string v42, "can_call"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_28

    const/16 v42, 0x1

    :goto_8
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canCall:Z

    .line 74
    const-string v42, "blacklisted_by_me"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_29

    const/16 v42, 0x1

    :goto_9
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 76
    const-string v42, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    .line 77
    const-string v42, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 78
    const-string v42, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "id"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    .line 79
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "first_name"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    const-string v44, "last_name"

    invoke-virtual/range {v43 .. v44}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartnerName:Ljava/lang/String;

    .line 82
    :cond_1
    const-string v42, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 83
    const-string v42, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v43, "\\."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "bd":[Ljava/lang/String;
    const/16 v42, 0x0

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    .line 85
    const/16 v42, 0x1

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    .line 86
    array-length v0, v4

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_2

    .line 87
    const/16 v42, 0x2

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    .line 90
    .end local v4    # "bd":[Ljava/lang/String;
    :cond_2
    const-string v42, "first_name_dat"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    .line 91
    const-string v42, "first_name_gen"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    .line 92
    const-string v42, "first_name_ins"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameIns:Ljava/lang/String;

    .line 93
    const-string v42, "first_name_acc"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    .line 94
    const-string v42, "last_name_dat"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameDat:Ljava/lang/String;

    .line 95
    const-string v42, "last_name_gen"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameGen:Ljava/lang/String;

    .line 96
    const-string v42, "last_name_ins"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameIns:Ljava/lang/String;

    .line 97
    const-string v42, "last_name_acc"

    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    .line 99
    const-string v42, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 100
    const-string v42, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 101
    const-string v42, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->country:Ljava/lang/String;

    .line 104
    :cond_3
    const-string v42, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_4

    const-string v42, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_4

    .line 105
    const-string v42, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    .line 106
    :cond_4
    const-string v42, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_5

    const-string v42, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_5

    .line 107
    const-string v42, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    .line 108
    :cond_5
    const-string v42, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 109
    const-string v42, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    .line 110
    :cond_6
    const-string v42, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 111
    const-string v42, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    .line 112
    :cond_7
    const-string v42, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 113
    const-string v42, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    .line 114
    :cond_8
    const-string v42, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_9

    const-string v42, "facebook"

    const-wide/16 v43, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v42

    const-wide/16 v44, -0x1

    cmp-long v42, v42, v44

    if-eqz v42, :cond_9

    .line 115
    const-string v42, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookId:J

    .line 116
    const-string v42, "facebook_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    .line 119
    :cond_9
    const-string v42, "friend_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 121
    const-string v42, "schools"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 122
    .local v34, "schools":Lorg/json/JSONArray;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    .line 123
    if-eqz v34, :cond_a

    .line 124
    const/4 v13, 0x0

    :goto_a
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_2a

    .line 138
    :cond_a
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    .line 139
    const-string v42, "universities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v40

    .line 140
    .local v40, "univers":Lorg/json/JSONArray;
    if-eqz v40, :cond_b

    .line 141
    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_2b

    .line 155
    :cond_b
    const-string v42, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_c

    const-string v42, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_c

    .line 156
    const-string v42, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    .line 157
    :cond_c
    const-string v42, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_d

    const-string v42, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_d

    .line 158
    const-string v42, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    .line 159
    :cond_d
    const-string v42, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_e

    const-string v42, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_e

    .line 160
    const-string v42, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    .line 161
    :cond_e
    const-string v42, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_f

    const-string v42, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_f

    .line 162
    const-string v42, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    .line 163
    :cond_f
    const-string v42, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_10

    const-string v42, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_10

    .line 164
    const-string v42, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    .line 165
    :cond_10
    const-string v42, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_11

    const-string v42, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_11

    .line 166
    const-string v42, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    .line 167
    :cond_11
    const-string v42, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_12

    const-string v42, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_12

    .line 168
    const-string v42, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 169
    :cond_12
    const-string v42, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_13

    const-string v42, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_13

    .line 170
    const-string v42, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    .line 171
    :cond_13
    const-string v42, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_14

    const-string v42, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_14

    .line 172
    const-string v42, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    .line 173
    :cond_14
    const-string v42, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_15

    const-string v42, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_15

    .line 174
    const-string v42, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    .line 175
    :cond_15
    const-string v42, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_16

    const-string v42, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    if-lez v42, :cond_16

    .line 176
    const-string v42, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 178
    :cond_16
    const-string v42, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2e

    const/16 v42, 0x1

    :goto_c
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    .line 180
    const-string v42, "personal"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 181
    .local v27, "personal":Lorg/json/JSONObject;
    if-eqz v27, :cond_18

    .line 182
    const-string v42, "langs"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 183
    .local v25, "langs":Lorg/json/JSONArray;
    if-eqz v25, :cond_17

    .line 184
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v35, "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :goto_d
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_2f

    .line 188
    const-string v42, ", "

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    .line 190
    .end local v35    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17
    const-string v42, "political"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    .line 191
    const-string v42, "religion"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    .line 192
    const-string v42, "life_main"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    .line 193
    const-string v42, "people_main"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    .line 194
    const-string v42, "inspired_by"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    .line 195
    const-string v42, "smoking"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    .line 196
    const-string v42, "alcohol"

    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    .line 199
    .end local v25    # "langs":Lorg/json/JSONArray;
    :cond_18
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v31, "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v42, "relatives_profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 201
    .local v20, "jrelprofiles":Lorg/json/JSONArray;
    if-eqz v20, :cond_19

    .line 202
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_30

    .line 214
    :cond_19
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    .line 215
    const-string v42, "relatives"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 216
    .local v32, "rels":Lorg/json/JSONArray;
    if-eqz v32, :cond_1a

    .line 217
    const/4 v13, 0x0

    :goto_f
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_33

    .line 240
    :cond_1a
    const-string v42, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1b

    .line 241
    const-string v42, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "time"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    .line 244
    :cond_1b
    const-string v42, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 245
    const-string v42, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "dt":Ljava/lang/String;
    const-string v42, "banned"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3a

    .line 247
    const/16 v42, -0x1

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    .line 303
    .end local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "dt":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "jcities":Lorg/json/JSONArray;
    .end local v15    # "jcountries":Lorg/json/JSONArray;
    .end local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v27    # "personal":Lorg/json/JSONObject;
    .end local v31    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v32    # "rels":Lorg/json/JSONArray;
    .end local v34    # "schools":Lorg/json/JSONArray;
    .end local v40    # "univers":Lorg/json/JSONArray;
    :cond_1c
    :goto_10
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    .line 304
    const-string v42, "counters"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 305
    .local v7, "counters":Lorg/json/JSONObject;
    if-eqz v7, :cond_1d

    .line 306
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v24

    .line 307
    .local v24, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_11
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-nez v42, :cond_4a

    .line 312
    .end local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v42, v0

    if-gez v42, :cond_1e

    .line 313
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v42, v0

    const-string v43, "members"

    const-string v44, "members_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_1e
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v29, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const-string v42, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1f

    const-string v42, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    if-eqz v42, :cond_1f

    .line 318
    const-string v42, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v18, v0

    .line 319
    .local v18, "jphotos":Lorg/json/JSONArray;
    if-eqz v18, :cond_1f

    .line 320
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_12
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v42

    if-lt v13, v0, :cond_4b

    .line 328
    .end local v13    # "i":I
    .end local v18    # "jphotos":Lorg/json/JSONArray;
    :cond_1f
    const-string v42, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "audio"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_20

    .line 329
    const-string v42, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "audio"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 330
    .local v16, "jf":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/AudioFile;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 331
    .local v12, "file":Lcom/vkontakte/android/AudioFile;
    iput-object v12, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    .line 334
    .end local v12    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v16    # "jf":Lorg/json/JSONObject;
    :cond_20
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v11, v42, v43

    const/16 v43, 0x1

    aput-object v29, v42, v43
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 335
    .end local v7    # "counters":Lorg/json/JSONObject;
    .end local v11    # "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    .end local v29    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v41

    .line 336
    .local v41, "x":Ljava/lang/Exception;
    const-string v42, "vk"

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 49
    .end local v41    # "x":Ljava/lang/Exception;
    .restart local v11    # "ep":Lcom/vkontakte/android/api/ExtendedUserProfile;
    :cond_21
    :try_start_1
    const-string v42, "photo_rec"

    goto/16 :goto_1

    .line 53
    :cond_22
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 59
    .restart local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "i":I
    .restart local v14    # "jcities":Lorg/json/JSONArray;
    :cond_23
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 60
    .local v6, "city":Lorg/json/JSONObject;
    const-string v42, "id"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const-string v43, "title"

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 65
    .end local v6    # "city":Lorg/json/JSONObject;
    .restart local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "jcountries":Lorg/json/JSONArray;
    :cond_24
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 66
    .local v9, "country":Lorg/json/JSONObject;
    const-string v42, "id"

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const-string v43, "title"

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 69
    .end local v9    # "country":Lorg/json/JSONObject;
    :cond_25
    const/16 v42, 0x0

    goto/16 :goto_5

    .line 70
    :cond_26
    const/16 v42, 0x0

    goto/16 :goto_6

    .line 71
    :cond_27
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 73
    :cond_28
    const/16 v42, 0x0

    goto/16 :goto_8

    .line 74
    :cond_29
    const/16 v42, 0x0

    goto/16 :goto_9

    .line 125
    .restart local v34    # "schools":Lorg/json/JSONArray;
    :cond_2a
    new-instance v33, Lcom/vkontakte/android/api/ExtendedUserProfile$School;

    invoke-direct/range {v33 .. v33}, Lcom/vkontakte/android/api/ExtendedUserProfile$School;-><init>()V

    .line 126
    .local v33, "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 127
    .local v21, "js":Lorg/json/JSONObject;
    const-string v42, "city"

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 128
    const-string v42, "name"

    const-string v43, "???"

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 129
    const-string v42, "year_from"

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    .line 130
    const-string v42, "year_to"

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    .line 131
    const-string v42, "year_graduated"

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    .line 132
    const-string v42, "class"

    const/16 v43, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    .line 133
    const-string v42, "speciality"

    const/16 v43, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    .line 134
    const-string v42, "type_str"

    sget-object v43, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    const v44, 0x7f06018f

    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    .line 135
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 142
    .end local v21    # "js":Lorg/json/JSONObject;
    .end local v33    # "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    .restart local v40    # "univers":Lorg/json/JSONArray;
    :cond_2b
    new-instance v38, Lcom/vkontakte/android/api/ExtendedUserProfile$University;

    invoke-direct/range {v38 .. v38}, Lcom/vkontakte/android/api/ExtendedUserProfile$University;-><init>()V

    .line 143
    .local v38, "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 144
    .local v22, "ju":Lorg/json/JSONObject;
    const-string v42, "city"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->city:Ljava/lang/String;

    .line 145
    const-string v42, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 146
    const-string v42, "faculty_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_2c

    .line 147
    const-string v42, "faculty_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    .line 148
    :cond_2c
    const-string v42, "chair_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_2d

    .line 149
    const-string v42, "chair_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    .line 150
    :cond_2d
    const-string v42, "graduation"

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    .line 151
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 178
    .end local v22    # "ju":Lorg/json/JSONObject;
    .end local v38    # "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    :cond_2e
    const/16 v42, 0x0

    goto/16 :goto_c

    .line 186
    .restart local v25    # "langs":Lorg/json/JSONArray;
    .restart local v27    # "personal":Lorg/json/JSONObject;
    .restart local v35    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_d

    .line 203
    .end local v25    # "langs":Lorg/json/JSONArray;
    .end local v35    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .restart local v31    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_30
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 204
    .local v17, "jp":Lorg/json/JSONObject;
    new-instance v26, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v26 .. v26}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 205
    .local v26, "p":Lcom/vkontakte/android/UserProfile;
    const-string v42, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 206
    const-string v42, "first_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 207
    const-string v42, "last_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 208
    sget v42, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v43, 0x3f800000    # 1.0f

    cmpl-float v42, v42, v43

    if-lez v42, :cond_31

    const-string v42, "photo_100"

    :goto_13
    const-string v43, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 209
    const-string v42, "sex"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_32

    const/16 v42, 0x1

    :goto_14
    move/from16 v0, v42

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 210
    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 208
    :cond_31
    const-string v42, "photo_50"

    goto :goto_13

    .line 209
    :cond_32
    const/16 v42, 0x0

    goto :goto_14

    .line 218
    .end local v17    # "jp":Lorg/json/JSONObject;
    .end local v26    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v32    # "rels":Lorg/json/JSONArray;
    :cond_33
    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 219
    .local v19, "jr":Lorg/json/JSONObject;
    const-string v42, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 220
    .local v39, "uid":I
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_34

    .line 217
    :goto_15
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f

    .line 221
    :cond_34
    const-string v42, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 222
    .local v37, "type":Ljava/lang/String;
    new-instance v30, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;

    invoke-direct/range {v30 .. v30}, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;-><init>()V

    .line 223
    .local v30, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    .line 225
    const-string v42, "grandchild"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_36

    .line 226
    const/16 v42, 0x4

    move/from16 v0, v42

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    .line 236
    :cond_35
    :goto_16
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 227
    :cond_36
    const-string v42, "grandparent"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_37

    .line 228
    const/16 v42, 0x3

    move/from16 v0, v42

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_16

    .line 229
    :cond_37
    const-string v42, "child"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_38

    .line 230
    const/16 v42, 0x2

    move/from16 v0, v42

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_16

    .line 231
    :cond_38
    const-string v42, "sibling"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_39

    .line 232
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_16

    .line 233
    :cond_39
    const-string v42, "parent"

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_35

    .line 234
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    goto :goto_16

    .line 248
    .end local v19    # "jr":Lorg/json/JSONObject;
    .end local v30    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v37    # "type":Ljava/lang/String;
    .end local v39    # "uid":I
    .restart local v10    # "dt":Ljava/lang/String;
    :cond_3a
    const-string v42, "deleted"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 249
    const/16 v42, -0x2

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    goto/16 :goto_10

    .line 253
    .end local v5    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "dt":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "jcities":Lorg/json/JSONArray;
    .end local v15    # "jcountries":Lorg/json/JSONArray;
    .end local v20    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v27    # "personal":Lorg/json/JSONObject;
    .end local v31    # "relatives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v32    # "rels":Lorg/json/JSONArray;
    .end local v34    # "schools":Lorg/json/JSONArray;
    .end local v40    # "univers":Lorg/json/JSONArray;
    :cond_3b
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/GetFullProfile;->uid:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 254
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v42, v0

    const-string v43, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 255
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v43, v0

    sget v42, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v42, v42, v44

    if-lez v42, :cond_45

    const-string v42, "photo_100"

    :goto_17
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 256
    const-string v42, "photo_100"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 257
    const-string v42, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    .line 258
    const-string v42, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "text"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    .line 259
    const-string v42, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 260
    const-string v42, "start_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    .line 261
    const-string v42, "end_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    .line 262
    const-string v42, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 264
    const-string v42, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_46

    const/16 v42, 0x1

    :goto_18
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    .line 266
    const-string v42, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_3f

    const-string v42, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_3f

    .line 267
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v36, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v42, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3c

    .line 269
    const-string v42, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_3c
    const-string v42, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3d

    .line 271
    const/16 v42, 0x0

    const-string v43, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    :cond_3d
    const-string v42, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_47

    .line 273
    const-string v42, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 274
    .restart local v17    # "jp":Lorg/json/JSONObject;
    const-string v42, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3e

    .line 275
    const/16 v42, 0x0

    const-string v43, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v36

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    :cond_3e
    const-string v42, "latitude"

    const-wide v43, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    .line 277
    const-string v42, "longitude"

    const-wide v43, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-wide/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    .line 281
    .end local v17    # "jp":Lorg/json/JSONObject;
    :goto_19
    const-string v42, ", "

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 283
    .end local v36    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    const-string v42, "is_member"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 284
    const-string v42, "is_closed"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    .line 285
    const-string v42, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_48

    const/16 v42, 0x1

    :goto_1a
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 286
    const-string v42, "membership"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "invitation"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    if-lez v42, :cond_40

    .line 287
    const/16 v42, 0x2

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 289
    :cond_40
    const-string v42, "membership"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    const-string v43, "request"

    invoke-virtual/range {v42 .. v43}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    if-lez v42, :cond_41

    .line 290
    const/16 v42, 0x3

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 292
    :cond_41
    const-string v42, "group"

    const-string v43, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_42

    .line 293
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 294
    :cond_42
    const-string v42, "event"

    const-string v43, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_43

    .line 295
    const/16 v42, 0x1

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 296
    :cond_43
    const-string v42, "page"

    const-string v43, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_44

    .line 297
    const/16 v42, 0x2

    move/from16 v0, v42

    iput v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    .line 298
    :cond_44
    const-string v42, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_49

    const/16 v42, 0x1

    :goto_1b
    move/from16 v0, v42

    iput-boolean v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    .line 299
    const-string v42, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 300
    const-string v42, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    goto/16 :goto_10

    .line 255
    :cond_45
    const-string v42, "photo_50"

    goto/16 :goto_17

    .line 264
    :cond_46
    const/16 v42, 0x0

    goto/16 :goto_18

    .line 279
    .restart local v36    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    const-wide v42, -0x3f3e6c0000000000L    # -9000.0

    move-wide/from16 v0, v42

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    move-wide/from16 v0, v42

    iput-wide v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    goto/16 :goto_19

    .line 285
    .end local v36    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_48
    const/16 v42, 0x0

    goto/16 :goto_1a

    .line 298
    :cond_49
    const/16 v42, 0x0

    goto :goto_1b

    .line 308
    .restart local v7    # "counters":Lorg/json/JSONObject;
    .restart local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 309
    .local v23, "k":Ljava/lang/String;
    iget-object v0, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v42, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 321
    .end local v23    # "k":Ljava/lang/String;
    .end local v24    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "i":I
    .restart local v18    # "jphotos":Lorg/json/JSONArray;
    .restart local v29    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    :cond_4b
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 322
    .restart local v17    # "jp":Lorg/json/JSONObject;
    new-instance v28, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 323
    .local v28, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetFullProfile$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetFullProfile$Callback;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/vkontakte/android/api/GetFullProfile;->callback:Lcom/vkontakte/android/api/GetFullProfile$Callback;

    .line 343
    return-object p0
.end method
