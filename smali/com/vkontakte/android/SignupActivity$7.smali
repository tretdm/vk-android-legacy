.class Lcom/vkontakte/android/SignupActivity$7;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$15(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$16(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$17(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v2, 0x7f08027f

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$7;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$18(Lcom/vkontakte/android/SignupActivity;)V

    goto :goto_0
.end method
