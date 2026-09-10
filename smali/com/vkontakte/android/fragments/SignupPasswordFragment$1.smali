.class Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;
.super Ljava/lang/Object;
.source "SignupPasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupPasswordFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    .line 52
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
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPasswordFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->access$0(Lcom/vkontakte/android/fragments/SignupPasswordFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
