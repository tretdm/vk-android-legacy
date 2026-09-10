.class Lcom/vkontakte/android/NewPostActivity$9;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$9;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllUploadsDone()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V
    .locals 2
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$9;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$5(Lcom/vkontakte/android/NewPostActivity;)V

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$9;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$6(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$9;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$7(Lcom/vkontakte/android/NewPostActivity;Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public onUploadFailed()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method
