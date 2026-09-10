.class Lcom/vkontakte/android/PhotoCommentsActivity$5;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->loadComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$5;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    .line 155
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 157
    iget-object v8, p0, Lcom/vkontakte/android/PhotoCommentsActivity$5;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-static {v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->access$2(Lcom/vkontakte/android/PhotoCommentsActivity;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    const/4 v8, 0x0

    new-array v2, v8, [Lcom/vkontakte/android/NewsComment;

    .line 160
    .local v2, "comments":[Lcom/vkontakte/android/NewsComment;
    :try_start_0
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "u"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 161
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v4, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v6, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 168
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "c"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-array v2, v8, [Lcom/vkontakte/android/NewsComment;

    .line 170
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 180
    iget-object v8, p0, Lcom/vkontakte/android/PhotoCommentsActivity$5;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-static {v8, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->access$3(Lcom/vkontakte/android/PhotoCommentsActivity;[Lcom/vkontakte/android/NewsComment;)V

    .line 182
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 164
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 165
    .local v7, "u":Lorg/json/JSONObject;
    const-string v8, "uid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "first_name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "last_name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v8, "uid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1

    const-string v8, "photo_medium_rec"

    :goto_3
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string v8, "photo_rec"

    goto :goto_3

    .line 171
    .end local v7    # "u":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    .local v1, "c":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v5}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 173
    .local v5, "nc":Lcom/vkontakte/android/NewsComment;
    const-string v8, "cid"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 174
    const-string v8, "message"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 175
    iget-object v8, p0, Lcom/vkontakte/android/PhotoCommentsActivity$5;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "date"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 176
    const-string v8, "from_id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 177
    const-string v8, "from_id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    aput-object v5, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 181
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "c":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "nc":Lcom/vkontakte/android/NewsComment;
    .end local v6    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    goto/16 :goto_2
.end method
