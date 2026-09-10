.class Lcom/vkontakte/android/FriendRequestsView$4;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method

.method public success([Lcom/vkontakte/android/api/FriendRequest;)V
    .locals 9
    .param p1, "reqs"    # [Lcom/vkontakte/android/api/FriendRequest;

    .prologue
    const/16 v8, 0xa

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 170
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object p1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 173
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v1, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;I)V

    .line 174
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 182
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v4}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x55

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    array-length v1, p1

    if-lez v1, :cond_5

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-le v1, v8, :cond_1

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v5, v5

    if-le v1, v5, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v4, v1}, Lcom/vkontakte/android/FriendRequestsView;->access$12(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 185
    const-string v1, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "more="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v5}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v5, v5, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$14(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/Button;

    move-result-object v4

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    if-le v1, v8, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    if-lez v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 191
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 193
    :cond_3
    return-void

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    array-length v4, p1

    add-int/2addr v1, v4

    new-array v0, v1, [Lcom/vkontakte/android/api/FriendRequest;

    .line 177
    .local v0, "r":[Lcom/vkontakte/android/api/FriendRequest;
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v4, v4, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v4

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v1, v1

    array-length v4, p1

    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object v0, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    goto/16 :goto_0

    .end local v0    # "r":[Lcom/vkontakte/android/api/FriendRequest;
    :cond_5
    move v1, v2

    .line 184
    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 186
    goto :goto_2

    :cond_7
    move v1, v3

    .line 187
    goto :goto_3
.end method
