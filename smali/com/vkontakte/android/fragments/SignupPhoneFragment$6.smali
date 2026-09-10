.class Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;
.super Ljava/lang/Object;
.source "SignupPhoneFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupPhoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$11(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPhoneFragment$6;->this$0:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->access$11(Lcom/vkontakte/android/fragments/SignupPhoneFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
