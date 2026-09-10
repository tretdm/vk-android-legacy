.class Lcom/vkontakte/android/LinkRedirActivity$4;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LinkRedirActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LinkRedirActivity;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$uri:Landroid/net/Uri;

    .line 284
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity$4;)Lcom/vkontakte/android/LinkRedirActivity;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 318
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 287
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 288
    .local v1, "p":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const-class v7, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/vkontakte/android/Photo;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 291
    .local v2, "ph":Lcom/vkontakte/android/Photo;
    const-string v6, "pid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->id:I

    .line 292
    const-string v6, "aid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->albumID:I

    .line 293
    const-string v6, "owner_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 294
    const-string v6, "src"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 295
    const-string v6, "text"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "text"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 296
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_4

    .line 297
    :cond_0
    const-string v6, "src_xbig"

    const-string v7, "src_big"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 300
    :goto_1
    const-string v6, "created"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->date:I

    .line 301
    const-string v6, "likes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    const-string v6, "likes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 303
    const-string v6, "likes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "user_likes"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_5

    :goto_2
    iput-boolean v4, v2, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 305
    :cond_1
    const-string v4, "photo"

    iget-object v5, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v4, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, "descr"

    iget-object v5, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    :cond_2
    const-string v4, "photo_list"

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/vkontakte/android/Photo;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "ph":Lcom/vkontakte/android/Photo;
    :goto_3
    return-void

    .line 295
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "p":Lorg/json/JSONObject;
    .restart local v2    # "ph":Lcom/vkontakte/android/Photo;
    :cond_3
    const-string v6, ""

    goto :goto_0

    .line 299
    :cond_4
    const-string v6, "src_big"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "ph":Lcom/vkontakte/android/Photo;
    :catch_0
    move-exception v3

    .line 310
    .local v3, "x":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$4;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$4$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/LinkRedirActivity$4$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity$4;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "p":Lorg/json/JSONObject;
    .restart local v2    # "ph":Lcom/vkontakte/android/Photo;
    :cond_5
    move v4, v5

    .line 303
    goto :goto_2
.end method
