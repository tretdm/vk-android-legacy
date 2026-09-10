.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)Lcom/vkontakte/android/fragments/StickersDetailsFragment;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    new-instance v2, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;Landroid/view/View;)V

    .line 131
    const-wide/16 v3, 0x12c

    .line 127
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$5(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I

    move-result v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v1

    .line 133
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$6(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$6(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/BillingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "product"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$5(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v2, "store_id"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$6(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$5(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;-><init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)V

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/data/Stickers;->activateFreePack(ILandroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$7(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 152
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$8(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Z)V

    goto :goto_0
.end method
