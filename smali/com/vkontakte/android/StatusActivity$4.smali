.class Lcom/vkontakte/android/StatusActivity$4;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StatusActivity;->sendIt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StatusActivity;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StatusActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StatusActivity$4;->this$0:Lcom/vkontakte/android/StatusActivity;

    iput-object p2, p0, Lcom/vkontakte/android/StatusActivity$4;->val$pdlg:Landroid/app/ProgressDialog;

    .line 85
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/StatusActivity$4;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 96
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/StatusActivity$4;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "status"

    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity$4;->this$0:Lcom/vkontakte/android/StatusActivity;

    iget-object v2, v2, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/StatusActivity$4;->this$0:Lcom/vkontakte/android/StatusActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/StatusActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/StatusActivity$4;->this$0:Lcom/vkontakte/android/StatusActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/StatusActivity;->finish()V

    .line 92
    return-void
.end method
