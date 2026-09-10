.class Lcom/vkontakte/android/fragments/PostListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x1000

    const/16 v11, 0x800

    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 79
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NewsEntry;

    .line 82
    .local v9, "post":Lcom/vkontakte/android/NewsEntry;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/fragments/PostListFragment;->canAddPost(Lcom/vkontakte/android/NewsEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    .end local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_2

    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v0, :cond_3

    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, v9, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_3

    .line 85
    :cond_2
    invoke-virtual {v9, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/fragments/PostListFragment;->prepend(Lcom/vkontakte/android/NewsEntry;)V

    .line 89
    .end local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostListFragment;->remove(II)V

    .line 91
    const-string v0, "post"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NewsEntry;

    .line 92
    .restart local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    if-eqz v9, :cond_4

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/fragments/PostListFragment;->onPostDeleted(Lcom/vkontakte/android/NewsEntry;)V

    .line 96
    .end local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "retweets"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "liked"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "retweeted"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/fragments/PostListFragment;->update(IIIIIZZ)V

    .line 99
    :cond_5
    const-string v0, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/NewsEntry;

    .line 105
    .restart local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "mode":Ljava/lang/String;
    const-string v0, "postponed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :cond_6
    const-string v0, "suggested"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    .end local v8    # "mode":Ljava/lang/String;
    :cond_7
    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_9

    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v0, :cond_8

    iget v0, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, v9, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-eq v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/fragments/PostListFragment;->replace(Lcom/vkontakte/android/NewsEntry;)V

    .line 116
    .end local v9    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    const-string v0, "com.vkontakte.android.RELOAD_FEED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->loadData()V

    goto/16 :goto_0
.end method
