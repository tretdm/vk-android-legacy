.class Lcom/vkontakte/android/WallView$32;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->doDeleteFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1406
    return-void
.end method

.method public success(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 1379
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v6, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "_can_write_msg"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/vkontakte/android/WallView;->access$24(Lcom/vkontakte/android/WallView;ZZZ)V

    .line 1380
    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v5}, Lcom/vkontakte/android/WallView;->access$30(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1381
    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v5}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v5}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v5}, Lcom/vkontakte/android/WallView;->access$34(Lcom/vkontakte/android/WallView;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f090214

    :goto_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v10}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    invoke-virtual {v7, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1383
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1389
    :goto_1
    const/4 v2, 0x0

    .line 1390
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v5, v5

    if-lt v1, v5, :cond_3

    .line 1396
    :goto_3
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v5, v5

    new-array v0, v5, [I

    .line 1397
    .local v0, "hints":[I
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v7, v7

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1399
    sput-object v0, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1400
    iget-object v5, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v5}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/FriendsCache;->remove(ILandroid/content/Context;)V

    .line 1402
    .end local v0    # "hints":[I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :goto_4
    return-void

    .line 1381
    :cond_1
    const v5, 0x7f090213

    goto :goto_0

    .line 1383
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 1384
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget v6, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v7, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v7}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1385
    sget-object v5, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1401
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1391
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_3
    :try_start_1
    sget-object v5, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/vkontakte/android/WallView$32;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1392
    move v2, v1

    .line 1393
    goto :goto_3

    .line 1390
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
