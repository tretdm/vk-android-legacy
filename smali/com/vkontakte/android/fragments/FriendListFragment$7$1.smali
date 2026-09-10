.class Lcom/vkontakte/android/fragments/FriendListFragment$7$1;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment$7;->success(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendListFragment$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$7;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$7;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$7;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$20(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$7;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$7;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$20(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$7;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment$7;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$7;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$21(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    goto :goto_0
.end method
