.class Lcom/vkontakte/android/LinkRedirActivity$7;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGetById$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity$7;)Lcom/vkontakte/android/LinkRedirActivity;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 556
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 557
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "res":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 537
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v4, Lcom/vkontakte/android/LinkRedirActivity$7$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/LinkRedirActivity$7$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity$7;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    :goto_0
    return-void

    .line 543
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 544
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string v3, "file"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 547
    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 548
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .local v2, "intent2":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    iget-object v3, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/LinkRedirActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
