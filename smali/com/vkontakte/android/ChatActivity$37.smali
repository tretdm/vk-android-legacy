.class Lcom/vkontakte/android/ChatActivity$37;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->markAllAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$mids:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$37;->val$mids:Ljava/util/Vector;

    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1884
    return-void
.end method

.method public success()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1845
    sget-boolean v3, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    if-nez v3, :cond_2

    .line 1846
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v4}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 1847
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->val$mids:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1865
    sget-object v3, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v3, :cond_0

    .line 1866
    sget-object v3, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v4, Lcom/vkontakte/android/ChatActivity$37$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ChatActivity$37$1;-><init>(Lcom/vkontakte/android/ChatActivity$37;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1873
    :cond_0
    sget-object v3, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v4, "messages"

    sget v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    sget-object v3, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 1875
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1876
    .local v2, "nm":Landroid/app/NotificationManager;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1877
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1879
    .end local v2    # "nm":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 1847
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1848
    .local v0, "mid":I
    sget-object v3, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v5}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1849
    sget-object v3, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v5}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1855
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v5}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v5

    invoke-static {v3, v5, v0, v6}, Lcom/vkontakte/android/cache/ChatCache;->setReadState(Landroid/content/Context;IIZ)V

    .line 1856
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$37;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1862
    :goto_2
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 1863
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    goto/16 :goto_0

    .line 1849
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1850
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v5, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v5, v0, :cond_4

    .line 1851
    iput-boolean v6, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1

    .line 1856
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1857
    .restart local v1    # "msg":Lcom/vkontakte/android/Message;
    iget v5, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v5, v0, :cond_6

    .line 1858
    iput-boolean v6, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_2
.end method
