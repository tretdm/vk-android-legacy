.class Lcom/vkontakte/android/ChangePasswordActivity$4;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountChangePassword$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChangePasswordActivity$4;)Lcom/vkontakte/android/ChangePasswordActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    new-instance v1, Lcom/vkontakte/android/ChangePasswordActivity$4$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ChangePasswordActivity$4$2;-><init>(Lcom/vkontakte/android/ChangePasswordActivity$4;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 100
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    new-instance v1, Lcom/vkontakte/android/ChangePasswordActivity$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChangePasswordActivity$4$1;-><init>(Lcom/vkontakte/android/ChangePasswordActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method
