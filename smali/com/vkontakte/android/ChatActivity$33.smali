.class Lcom/vkontakte/android/ChatActivity$33;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSend$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$m:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$33;->val$m:Lcom/vkontakte/android/Message;

    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1789
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->val$m:Lcom/vkontakte/android/Message;

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 1790
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1791
    sget-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1792
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$54(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$54(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ChatActivity;->access$55(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)Z

    .line 1793
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 1795
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1796
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1797
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1798
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1799
    const v1, 0x7f09001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1800
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v1, 0x7f090072

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1801
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(I)V
    .locals 3
    .param p1, "mid"    # I

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->val$m:Lcom/vkontakte/android/Message;

    iput p1, v0, Lcom/vkontakte/android/Message;->id:I

    .line 1783
    sget-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1784
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$54(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$33;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$54(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ChatActivity;->access$55(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)Z

    .line 1785
    :cond_0
    return-void
.end method
