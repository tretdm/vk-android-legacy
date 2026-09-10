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

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    .line 338
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 356
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 341
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 342
    .local v2, "ja":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0, v2}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 343
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, "args":Landroid/os/Bundle;
    const-string v4, "album"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    const-string v4, "PhotoListFragment"

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "ja":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v3

    .line 348
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 350
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$2;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method
