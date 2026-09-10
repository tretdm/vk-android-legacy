.class Lcom/vkontakte/android/ChangePasswordActivity$4$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChangePasswordActivity$4;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

.field final synthetic val$ecode:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChangePasswordActivity$4;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    iput p2, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->val$ecode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->val$ecode:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    const v1, 0x7f0d01cf

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->this$1:Lcom/vkontakte/android/ChangePasswordActivity$4;

    iget-object v1, v0, Lcom/vkontakte/android/ChangePasswordActivity$4;->this$0:Lcom/vkontakte/android/ChangePasswordActivity;

    iget v0, p0, Lcom/vkontakte/android/ChangePasswordActivity$4$2;->val$ecode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const v0, 0x7f0d00ce

    :goto_1
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d00d0

    goto :goto_1
.end method
