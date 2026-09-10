.class Lcom/vkontakte/android/DialogsActivity$12;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->refresh()V
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
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v3, v0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 592
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 593
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 595
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 597
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 565
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 566
    sget-object v1, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 567
    if-eqz p1, :cond_0

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 570
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/vkontakte/android/DialogsActivity;->processMessages(Lorg/json/JSONObject;Z)V

    .line 571
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/DialogsCache;->replace(Ljava/util/Vector;Landroid/content/Context;)V

    .line 572
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 573
    .local v0, "o1":Lorg/json/JSONObject;
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    const-string v2, "messages"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "o1":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 581
    sget-object v1, Lcom/vkontakte/android/Global;->openChats:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 582
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean v3, v1, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 583
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 584
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 586
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$12;->this$0:Lcom/vkontakte/android/DialogsActivity;

    sget v2, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/DialogsCache;->setUpdateTime(Landroid/content/Context;I)V

    .line 589
    return-void

    .line 576
    .restart local v0    # "o1":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 579
    .end local v0    # "o1":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
