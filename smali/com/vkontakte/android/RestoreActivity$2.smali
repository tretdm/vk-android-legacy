.class Lcom/vkontakte/android/RestoreActivity$2;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$000(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity;->access$000(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/RestoreActivity;->access$102(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$2;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity;->access$200(Lcom/vkontakte/android/RestoreActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/RestoreActivity$2$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RestoreActivity$2$1;-><init>(Lcom/vkontakte/android/RestoreActivity$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/RestoreActivity;->access$400(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
