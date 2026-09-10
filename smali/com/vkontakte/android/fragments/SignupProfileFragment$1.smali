.class Lcom/vkontakte/android/fragments/SignupProfileFragment$1;
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
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$000(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$000(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$102(Lcom/vkontakte/android/fragments/SignupProfileFragment;I)I

    .line 71
    return-void
.end method
