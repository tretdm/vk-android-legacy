.class Lcom/vkontakte/android/fragments/SignupCodeFragment$3;
.super Ljava/lang/Object;
.source "SignupCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$300(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$300(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment$3$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment$3;)V

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;->resendCode(ZLjava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method
