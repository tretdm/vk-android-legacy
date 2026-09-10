.class Lcom/vkontakte/android/SignupActivity$10;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthConfirm$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->completeSignup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 261
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/16 v0, 0x456

    if-ne p1, v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f0d02e6

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$600(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    const/16 v0, 0x457

    if-eq p1, v0, :cond_0

    .line 266
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$600(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f0d033d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/SignupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$600(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public success(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$1900(Lcom/vkontakte/android/SignupActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$1000(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$1500(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$10;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    .line 257
    return-void
.end method
