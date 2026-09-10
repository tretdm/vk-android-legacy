.class Lcom/vkontakte/android/WallView$33;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "WallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->doAddFriend(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    .line 1416
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "msg":Ljava/lang/String;
    const/16 v1, 0xb0

    if-ne p1, v1, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1445
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1418
    const-string v0, "ok"

    .line 1420
    .local v0, "msg":Ljava/lang/String;
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1421
    .local v1, "resp":I
    if-ne v1, v9, :cond_0

    .line 1422
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$34(Lcom/vkontakte/android/WallView;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f090093

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    :cond_0
    if-ne v1, v10, :cond_1

    .line 1425
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1427
    :cond_1
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1428
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1431
    .end local v1    # "resp":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1432
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 1433
    .local v2, "up":Lcom/vkontakte/android/UserProfile;
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 1434
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    const-string v4, " "

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 1435
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    const-string v4, " "

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 1436
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1437
    iget-object v3, p0, Lcom/vkontakte/android/WallView$33;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1438
    return-void

    .line 1422
    .end local v2    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "resp":I
    :cond_3
    const v3, 0x7f090092

    goto/16 :goto_0

    .line 1430
    .end local v1    # "resp":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
