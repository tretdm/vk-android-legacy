.class Lcom/vkontakte/android/WallView$28;
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1263
    return-void
.end method

.method public success(II)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 1233
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$19(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0600ef

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1234
    .local v0, "btn":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$20(Lcom/vkontakte/android/WallView;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0600ef

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1236
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$26(Lcom/vkontakte/android/WallView;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1238
    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v6}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$30(Lcom/vkontakte/android/WallView;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0901d6

    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v11}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    invoke-virtual {v8, v6, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1240
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1246
    :goto_1
    const/4 v3, 0x0

    .line 1247
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v6, v6

    if-lt v2, v6, :cond_3

    .line 1253
    :goto_3
    sget-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v6, v6

    new-array v1, v6, [I

    .line 1254
    .local v1, "hints":[I
    sget-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1255
    sget-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v8, v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v7, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    sput-object v1, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1257
    iget-object v6, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v7}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/cache/FriendsCache;->remove(ILandroid/content/Context;)V

    .line 1259
    .end local v0    # "btn":Landroid/view/View;
    .end local v1    # "hints":[I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :goto_4
    return-void

    .line 1238
    .restart local v0    # "btn":Landroid/view/View;
    :cond_1
    const v6, 0x7f0901d5

    goto :goto_0

    .line 1240
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 1241
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    iget v7, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v8, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v8}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1242
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1258
    .end local v0    # "btn":Landroid/view/View;
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1248
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "btn":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    :cond_3
    :try_start_1
    sget-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/vkontakte/android/WallView$28;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v7}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-ne v6, v7, :cond_4

    .line 1249
    move v3, v2

    .line 1250
    goto :goto_3

    .line 1247
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
