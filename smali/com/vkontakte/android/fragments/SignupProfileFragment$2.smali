.class Lcom/vkontakte/android/fragments/SignupProfileFragment$2;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$0(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$0(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$1(Lcom/vkontakte/android/fragments/SignupProfileFragment;I)V

    .line 79
    return-void
.end method
