.class Lcom/vkontakte/android/LinkRedirActivity$8;
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
    .line 655
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 687
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 658
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 659
    .local v1, "r":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 661
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 683
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 667
    .restart local v1    # "r":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "type":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 670
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "id"

    const-string v5, "object_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string v4, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 672
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 673
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "group"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 675
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    const-string v5, "object_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v4, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 677
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 679
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->access$000(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 680
    iget-object v4, p0, Lcom/vkontakte/android/LinkRedirActivity$8;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
