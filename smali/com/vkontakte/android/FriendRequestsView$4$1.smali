.class Lcom/vkontakte/android/FriendRequestsView$4$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$4;->success([Lcom/vkontakte/android/api/FriendRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$4;

.field private final synthetic val$reqs:[Lcom/vkontakte/android/api/FriendRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$4;[Lcom/vkontakte/android/api/FriendRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 172
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    iput-object v7, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 175
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;I)V

    .line 176
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 183
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "processedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v7, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v8, v7

    move v4, v5

    :goto_1
    if-lt v4, v8, :cond_5

    .line 191
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    new-array v4, v5, [Lcom/vkontakte/android/api/FriendRequest;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/vkontakte/android/api/FriendRequest;

    iput-object v4, v7, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v8}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/FriendRequestsView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x55

    invoke-virtual {v4, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 194
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 195
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    if-lez v4, :cond_7

    sget v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-le v4, v11, :cond_1

    sget v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v8}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v8

    iget-object v8, v8, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v8, v8

    if-le v4, v8, :cond_7

    :cond_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {v7, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$12(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 196
    const-string v4, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "more="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v8}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v8}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v8

    iget-object v8, v8, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$14(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/Button;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    if-le v4, v11, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v7, v7

    if-lez v7, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 202
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 204
    :cond_3
    return-void

    .line 178
    .end local v0    # "processedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v7, v7

    add-int/2addr v4, v7

    new-array v1, v4, [Lcom/vkontakte/android/api/FriendRequest;

    .line 179
    .local v1, "r":[Lcom/vkontakte/android/api/FriendRequest;
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v7, v7

    invoke-static {v4, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v7, v7

    iget-object v8, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v8, v8

    invoke-static {v4, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v4

    iput-object v1, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    goto/16 :goto_0

    .line 185
    .end local v1    # "r":[Lcom/vkontakte/android/api/FriendRequest;
    .restart local v0    # "processedIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    :cond_5
    aget-object v2, v7, v4

    .line 186
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v9, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v9, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 187
    iget-object v9, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v9, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_7
    move v4, v5

    .line 195
    goto/16 :goto_2

    :cond_8
    move v4, v6

    .line 197
    goto/16 :goto_3

    :cond_9
    move v4, v6

    .line 198
    goto/16 :goto_4
.end method
