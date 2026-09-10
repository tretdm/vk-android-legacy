.class Lcom/vkontakte/android/LinkRedirActivity$5;
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

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 552
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 534
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 535
    .local v7, "jp":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 536
    new-instance v8, Lcom/vkontakte/android/Photo;

    invoke-direct {v8, v7}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 537
    .local v8, "photo":Lcom/vkontakte/android/Photo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v6, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "list"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 541
    const-string v0, "position"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    const-string v0, "PhotoViewerFragment"

    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v6    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    .end local v7    # "jp":Lorg/json/JSONObject;
    .end local v8    # "photo":Lcom/vkontakte/android/Photo;
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v9

    .line 544
    .local v9, "x":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$5;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v2, Lcom/vkontakte/android/LinkRedirActivity$5$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LinkRedirActivity$5$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity$5;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
