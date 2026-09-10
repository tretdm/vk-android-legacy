.class Lcom/vkontakte/android/PostViewActivity$27;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallLike$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->doRetweet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$wasLiked:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 896
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->val$wasLiked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 898
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$34(Lcom/vkontakte/android/PostViewActivity;)V

    .line 899
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$28(Lcom/vkontakte/android/PostViewActivity;)V

    .line 900
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0
.end method

.method public success(III)V
    .locals 9
    .param p1, "likes"    # I
    .param p2, "retweets"    # I
    .param p3, "rpID"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 868
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iput p1, v3, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 869
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 870
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$34(Lcom/vkontakte/android/PostViewActivity;)V

    .line 871
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$28(Lcom/vkontakte/android/PostViewActivity;)V

    .line 872
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 873
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v0, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 874
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 875
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 877
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3, v8, v6}, Lcom/vkontakte/android/PostViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 878
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "userphoto"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 879
    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 880
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 881
    invoke-virtual {v0, v7, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 882
    iput v5, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 883
    iput v6, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 884
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 886
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "entry"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 888
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 889
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 890
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$27;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 891
    return-void
.end method
