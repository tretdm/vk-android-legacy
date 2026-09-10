.class Lcom/vkontakte/android/fragments/SignupProfileFragment$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v2, "limit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$2(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$3;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
