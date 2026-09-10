.class Lcom/vkontakte/android/SignupActivity$4;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->setStep(I)V
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
    .line 103
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$900(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$900(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$1002(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$1100(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/SignupActivity$4$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SignupActivity$4$1;-><init>(Lcom/vkontakte/android/SignupActivity$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/SignupActivity;->access$1200(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
