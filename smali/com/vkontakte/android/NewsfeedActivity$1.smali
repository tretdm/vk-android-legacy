.class Lcom/vkontakte/android/NewsfeedActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsfeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 47
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/NewsEntry;

    .line 49
    .local v7, "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v7, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_0

    iget v0, v7, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v0, :cond_1

    iget v0, v7, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, v7, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/NewsView;->prepend(Lcom/vkontakte/android/NewsEntry;)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v7, v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 54
    .end local v7    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->remove(II)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$1(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->remove(II)V

    .line 57
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "post_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 58
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "post_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->remove(IILandroid/content/Context;)V

    .line 60
    :cond_2
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/NewsView;->update(IIIIZ)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$1(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/NewsView;->update(IIIIZ)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "retweeted"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIZZ)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "retweeted"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->update(Landroid/content/Context;IIIIZZ)V

    .line 66
    :cond_3
    const-string v0, "com.vkontakte.android.RELOAD_FROM_CACHE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->reloadFromCache()V

    .line 69
    :cond_4
    return-void
.end method
