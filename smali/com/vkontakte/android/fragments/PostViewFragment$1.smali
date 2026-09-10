.class Lcom/vkontakte/android/fragments/PostViewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 153
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 156
    const-string v3, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    const-string v3, "owner_id"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "oid":I
    const-string v3, "post_id"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "pid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v1, v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const-string v4, "likes"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 161
    const-string v3, "comments"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 163
    :cond_0
    const-string v3, "retweets"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const-string v4, "retweets"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 165
    :cond_1
    const-string v3, "retweeted"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "retweeted"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    .line 168
    .local v2, "wasLiked":Z
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const-string v4, "liked"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 169
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 170
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 175
    .end local v0    # "oid":I
    .end local v1    # "pid":I
    .end local v2    # "wasLiked":Z
    :cond_3
    return-void
.end method
