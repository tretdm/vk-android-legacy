.class Lcom/vkontakte/android/LinkRedirActivity$2;
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

.field final synthetic val$aid:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;ILandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput p2, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$aid:I

    iput-object p3, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 427
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 401
    :try_start_0
    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v0

    iget-object v8, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 402
    .local v8, "ja":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 403
    .local v6, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 404
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$aid:I

    if-ne v0, v2, :cond_1

    .line 405
    new-instance v6, Lcom/vkontakte/android/api/PhotoAlbum;

    .end local v6    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 409
    .restart local v6    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    if-nez v6, :cond_2

    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const v2, 0x7f0d0001

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 423
    .end local v6    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v7    # "i":I
    .end local v8    # "ja":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 403
    .restart local v6    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .restart local v7    # "i":I
    .restart local v8    # "ja":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 415
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "album"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    const-string v0, "PhotoListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 418
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v6    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v7    # "i":I
    .end local v8    # "ja":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 419
    .local v9, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_1
.end method
