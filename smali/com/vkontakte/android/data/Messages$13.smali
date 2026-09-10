.class final Lcom/vkontakte/android/data/Messages$13;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesSend$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 7
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 880
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->access$400(Lcom/vkontakte/android/Message;)V

    .line 881
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    iput-boolean v5, v1, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 882
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const-string v1, "privacy"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    :cond_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 887
    sget-object v1, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkontakte/android/background/CountingLock;->decrement()V

    .line 888
    return-void
.end method

.method public success(I)V
    .locals 3
    .param p1, "mid"    # I

    .prologue
    .line 867
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v1, p1}, Lcom/vkontakte/android/cache/Cache;->setMessageID(II)V

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oldID"

    iget-object v2, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v1, "newID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    iput p1, v1, Lcom/vkontakte/android/Message;->id:I

    .line 873
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->access$400(Lcom/vkontakte/android/Message;)V

    .line 874
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$13;->val$m:Lcom/vkontakte/android/Message;

    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->access$500(Lcom/vkontakte/android/Message;)V

    .line 875
    sget-object v1, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkontakte/android/background/CountingLock;->decrement()V

    .line 876
    return-void
.end method
