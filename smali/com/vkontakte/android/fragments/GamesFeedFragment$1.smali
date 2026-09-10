.class Lcom/vkontakte/android/fragments/GamesFeedFragment$1;
.super Ljava/lang/Object;
.source "GamesFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$1;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    .local v1, "uid":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v2, "ProfileFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$1;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 44
    return-void
.end method
