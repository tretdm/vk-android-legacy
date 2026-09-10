.class Lcom/vkontakte/android/RestoreActivity$10;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountChangePassword$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->completeRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/RestoreActivity$10;)Lcom/vkontakte/android/RestoreActivity;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 265
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    new-instance v1, Lcom/vkontakte/android/RestoreActivity$10$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/RestoreActivity$10$1;-><init>(Lcom/vkontakte/android/RestoreActivity$10;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 257
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {p1, p2, v0, v1}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$17(Lcom/vkontakte/android/RestoreActivity;Z)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->setResult(I)V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$10;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RestoreActivity;->finish()V

    .line 261
    return-void
.end method
