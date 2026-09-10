.class Lcom/vkontakte/android/PollEditorActivity$8;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsCreate$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PollEditorActivity;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PollEditorActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$8;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$8;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void

    .line 224
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(Lcom/vkontakte/android/PollAttachment;)V
    .locals 3
    .param p1, "poll"    # Lcom/vkontakte/android/PollAttachment;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "poll"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$8;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/PollEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$8;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PollEditorActivity;->finish()V

    .line 220
    return-void
.end method
