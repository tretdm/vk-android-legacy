.class Lcom/vkontakte/android/fragments/NotificationsFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v2, "ProfileFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 109
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
