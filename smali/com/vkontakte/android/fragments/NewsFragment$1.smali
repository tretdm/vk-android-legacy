.class Lcom/vkontakte/android/fragments/NewsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 43
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getList()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 47
    .local v8, "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_2

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v0, :cond_3

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_3

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/NewsView;->prepend(Lcom/vkontakte/android/NewsEntry;)V

    .line 51
    .end local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p2, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->remove(II)V

    .line 54
    :cond_4
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

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

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/NewsView;->update(IIIIIZZ)V

    .line 57
    :cond_5
    const-string v0, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 59
    .restart local v8    # "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_6

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v0, :cond_0

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_0

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/NewsView;->replace(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0
.end method
