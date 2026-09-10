.class Lcom/vkontakte/android/DialogsActivity$12;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 562
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v1, v0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 609
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 610
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 611
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 565
    if-eqz p1, :cond_2

    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 568
    :cond_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 570
    .local v0, "a":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    invoke-static {v3, v5}, Lcom/vkontakte/android/DialogsActivity;->access$11(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 571
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/DialogsActivity;->access$12(Lcom/vkontakte/android/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/DialogsActivity;->access$11(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 573
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/DialogsActivity;->access$13(Lcom/vkontakte/android/DialogsActivity;Z)V

    .line 574
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity;->access$15(Lcom/vkontakte/android/DialogsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 577
    :cond_1
    if-eqz v0, :cond_4

    .line 578
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/vkontakte/android/DialogsActivity;->processMessages(Lorg/json/JSONObject;Z)V

    .line 584
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v3, :cond_2

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    sput v3, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 586
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "c"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 587
    .local v1, "o1":Lorg/json/JSONObject;
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 588
    sget-object v3, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    const-string v4, "messages"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "o1":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v3, :cond_3

    .line 598
    sget-object v3, Lcom/vkontakte/android/Global;->openChats:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 599
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v7, v3, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 600
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 603
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 604
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 605
    return-void

    .line 580
    .restart local v0    # "a":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    .line 581
    const/4 v3, 0x0

    sput v3, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 595
    .end local v0    # "a":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 590
    .end local v2    # "x":Ljava/lang/Exception;
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "o1":Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    sget-object v3, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
