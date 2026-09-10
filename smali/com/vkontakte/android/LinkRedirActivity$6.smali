.class Lcom/vkontakte/android/LinkRedirActivity$6;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetById$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity$6;)Lcom/vkontakte/android/LinkRedirActivity;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 516
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v1, Lcom/vkontakte/android/LinkRedirActivity$6$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LinkRedirActivity$6$2;-><init>(Lcom/vkontakte/android/LinkRedirActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;)V
    .locals 5
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 500
    array-length v1, p1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v2, Lcom/vkontakte/android/LinkRedirActivity$6$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LinkRedirActivity$6$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "entry"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 508
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    const-string v2, "reply"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 509
    const-string v1, "comment"

    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    const-string v4, "reply"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/LinkRedirActivity;->access$1(Lcom/vkontakte/android/LinkRedirActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    :cond_1
    const-string v1, "PostViewFragment"

    iget-object v2, p0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
