.class Lcom/vkontakte/android/fragments/FriendsFragment$9;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendsFragment$9;)Lcom/vkontakte/android/fragments/FriendsFragment;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_from_menu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-wide/16 v0, 0xb4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 377
    const-string v0, "vk"

    const-string v1, "NO ACTIVITY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 408
    :goto_1
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$9$1;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method
