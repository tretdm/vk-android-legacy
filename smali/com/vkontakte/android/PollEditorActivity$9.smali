.class Lcom/vkontakte/android/PollEditorActivity$9;
.super Ljava/lang/Object;
.source "PollEditorActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PollsEdit$Callback;


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

.field private final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PollEditorActivity$9;->val$question:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    return-void

    .line 263
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PollEditorActivity;->access$14(Lcom/vkontakte/android/PollEditorActivity;)Lcom/vkontakte/android/PollAttachment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$9;->val$question:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "poll"

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PollEditorActivity;->access$14(Lcom/vkontakte/android/PollEditorActivity;)Lcom/vkontakte/android/PollAttachment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/PollEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 258
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity$9;->this$0:Lcom/vkontakte/android/PollEditorActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PollEditorActivity;->finish()V

    .line 259
    return-void
.end method
