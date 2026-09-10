.class Lcom/vkontakte/android/NewVideoPlayerActivity$8;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDelete$Callback;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 422
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

    .line 433
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 435
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 436
    return-void

    .line 433
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->invalidateOptionsMenu()V

    .line 427
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 429
    return-void
.end method
