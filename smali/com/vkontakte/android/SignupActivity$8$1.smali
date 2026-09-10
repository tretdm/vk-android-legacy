.class Lcom/vkontakte/android/SignupActivity$8$1;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity$8;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SignupActivity$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$8$1;->this$1:Lcom/vkontakte/android/SignupActivity$8;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8$1;->this$1:Lcom/vkontakte/android/SignupActivity$8;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity$8;->access$0(Lcom/vkontakte/android/SignupActivity$8;)Lcom/vkontakte/android/SignupActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/RestoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$8$1;->this$1:Lcom/vkontakte/android/SignupActivity$8;

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity$8;->access$0(Lcom/vkontakte/android/SignupActivity$8;)Lcom/vkontakte/android/SignupActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity;->access$20(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$8$1;->this$1:Lcom/vkontakte/android/SignupActivity$8;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity$8;->access$0(Lcom/vkontakte/android/SignupActivity$8;)Lcom/vkontakte/android/SignupActivity;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method
