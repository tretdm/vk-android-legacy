.class Lcom/vkontakte/android/PhotoViewerActivity$28;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->loadPhotoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 1196
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$19(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1280
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1198
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lcom/vkontakte/android/PhotoViewerActivity;->access$19(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 1200
    :try_start_0
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1201
    .local v3, "resp":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const/4 v11, 0x0

    iput v11, v8, Lcom/vkontakte/android/Photo;->nTags:I

    .line 1202
    const-string v8, "t"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1203
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 1204
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    iput v11, v8, Lcom/vkontakte/android/Photo;->nTags:I

    .line 1205
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v6, v8, [Lcom/vkontakte/android/PhotoTag;

    .line 1206
    .local v6, "tags":[Lcom/vkontakte/android/PhotoTag;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_4

    .line 1218
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v11, 0x7f0600da

    invoke-virtual {v8, v11}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v12, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v12, v12, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object v6, v12, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    iput-object v6, v11, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V

    .line 1220
    .end local v1    # "i":I
    .end local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "on"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    .line 1221
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "op"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/vkontakte/android/Photo;->ownerPhoto:Ljava/lang/String;

    .line 1222
    const-string v8, "d"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "d"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 1223
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    iget-object v8, v8, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, ""

    iput-object v11, v8, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 1224
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "date"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/vkontakte/android/Photo;->date:I

    .line 1226
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "c"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v8, Lcom/vkontakte/android/Photo;->nComments:I

    .line 1269
    const-string v8, "l"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1270
    .local v2, "lk":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 1271
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v11

    const-string v11, "count"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 1272
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v11, v8, v11

    const-string v8, "user_likes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_5

    move v8, v9

    :goto_1
    iput-boolean v8, v11, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 1274
    :cond_3
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v9, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v9, v9, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v9

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 1275
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$28;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 1277
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "lk":Lorg/json/JSONObject;
    .end local v3    # "resp":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 1207
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "resp":Lorg/json/JSONObject;
    .restart local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1208
    .local v5, "tag":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/PhotoTag;

    invoke-direct {v4}, Lcom/vkontakte/android/PhotoTag;-><init>()V

    .line 1209
    .local v4, "t":Lcom/vkontakte/android/PhotoTag;
    const-string v8, "tag_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->id:I

    .line 1210
    const-string v8, "uid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->userID:I

    .line 1211
    const-string v8, "tagged_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    .line 1212
    const-string v8, "x"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v8, v11

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->x1:F

    .line 1213
    const-string v8, "y"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v8, v11

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->y1:F

    .line 1214
    const-string v8, "x2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v8, v11

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->x2:F

    .line 1215
    const-string v8, "y2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v8, v11

    iput v8, v4, Lcom/vkontakte/android/PhotoTag;->y2:F

    .line 1216
    aput-object v4, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v4    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v5    # "tag":Lorg/json/JSONObject;
    .end local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    .restart local v2    # "lk":Lorg/json/JSONObject;
    :cond_5
    move v8, v10

    .line 1272
    goto :goto_1

    .line 1276
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "lk":Lorg/json/JSONObject;
    .end local v3    # "resp":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
