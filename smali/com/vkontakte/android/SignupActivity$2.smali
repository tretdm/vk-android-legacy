.class Lcom/vkontakte/android/SignupActivity$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$000(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->isFilled()I

    move-result v0

    .line 68
    .local v0, "f":I
    if-ne v0, v3, :cond_1

    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity;->access$000(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$102(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity;->access$000(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$202(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity;->access$000(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getGender()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$302(Lcom/vkontakte/android/SignupActivity;I)I

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SignupActivity;->access$000(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getPhoto()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$402(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1, v3}, Lcom/vkontakte/android/SignupActivity;->access$500(Lcom/vkontakte/android/SignupActivity;I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$2;->this$0:Lcom/vkontakte/android/SignupActivity;

    const v3, 0x7f0d02ee

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$600(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
