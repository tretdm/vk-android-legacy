.class Lcom/vkontakte/android/NewVideoPlayerActivity$7;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->addVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1902(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 414
    return-void

    .line 411
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(I)V
    .locals 2
    .param p1, "vid"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1802(Lcom/vkontakte/android/NewVideoPlayerActivity;I)I

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->invalidateOptionsMenu()V

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1902(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 407
    return-void
.end method
