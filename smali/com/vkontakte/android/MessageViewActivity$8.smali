.class Lcom/vkontakte/android/MessageViewActivity$8;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$8;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/MessageViewActivity$8;->val$pdlg:Landroid/app/ProgressDialog;

    .line 399
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$8;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$8;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$8;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    iget-object v2, p0, Lcom/vkontakte/android/MessageViewActivity$8;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iget v2, v2, Lcom/vkontakte/android/MessageViewActivity;->msgID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$8;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MessageViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$8;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/MessageViewActivity;->finish()V

    .line 406
    return-void
.end method
