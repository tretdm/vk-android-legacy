.class Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment$9$1;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->this$2:Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->this$2:Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->this$2:Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1600(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->this$2:Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;->this$1:Lcom/vkontakte/android/fragments/FriendsFragment$9;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9$1$1;->val$h:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method
