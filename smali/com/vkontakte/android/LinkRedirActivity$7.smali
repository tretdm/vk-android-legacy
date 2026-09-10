.class Lcom/vkontakte/android/LinkRedirActivity$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity$7;)Lcom/vkontakte/android/LinkRedirActivity;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 524
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 525
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 509
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 510
    array-length v1, p1

    if-nez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    new-instance v2, Lcom/vkontakte/android/LinkRedirActivity$7$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LinkRedirActivity$7$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity$7;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const-class v2, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entry"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/vkontakte/android/LinkRedirActivity$7;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
