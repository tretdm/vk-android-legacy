.class Lcom/vkontakte/android/ChangePasswordActivity$4$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChangePasswordActivity$4;->success(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChangePasswordActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$1;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$1;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/ChangePasswordActivity$4;->access$0(Lcom/vkontakte/android/ChangePasswordActivity$4;)Lcom/vkontakte/android/ChangePasswordActivity;

    move-result-object v0

    const v1, 0x7f080329

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$1;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/ChangePasswordActivity$4;->access$0(Lcom/vkontakte/android/ChangePasswordActivity$4;)Lcom/vkontakte/android/ChangePasswordActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ChangePasswordActivity;->finish()V

    .line 105
    return-void
.end method
