.class Lcom/vkontakte/android/fragments/ProfileFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/16 v11, 0x1000

    const/16 v10, 0x800

    const/4 v9, 0x0

    .line 48
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 50
    .local v8, "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {v8, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v2, v9}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons(II)V

    .line 60
    .end local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    :goto_0
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ProfileView;->remove(II)V

    .line 62
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 63
    const-string v0, "post"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 64
    .restart local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v8, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v3, v9}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons(II)V

    .line 70
    .end local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    :goto_1
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "retweets"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "liked"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "retweeted"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/ProfileView;->update(IIIIIZZ)V

    .line 73
    :cond_2
    const-string v0, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 75
    .restart local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {v8, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/ProfileView;->replace(Lcom/vkontakte/android/NewsEntry;)V

    .line 79
    .end local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    const-string v0, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_5

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileView;->setUserPhoto(Ljava/lang/String;)V

    .line 84
    :cond_5
    return-void

    .line 53
    .restart local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_6
    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v9, v2}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons(II)V

    goto/16 :goto_0

    .line 56
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/ProfileView;->prepend(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 66
    :cond_8
    invoke-virtual {v8, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons(II)V

    goto/16 :goto_1
.end method
