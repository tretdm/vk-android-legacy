.class Lcom/vkontakte/android/fragments/FriendListFragment$8$1;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendListFragment$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$8;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$8;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$8;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$8;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/FriendListFragment$8;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$8;->access$0(Lcom/vkontakte/android/fragments/FriendListFragment$8;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$2(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 542
    :cond_0
    return-void
.end method
