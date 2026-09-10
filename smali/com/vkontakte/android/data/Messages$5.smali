.class final Lcom/vkontakte/android/data/Messages$5;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getChatUsersResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$5;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 276
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "adminID"    # I
    .param p5, "dnd"    # I
    .param p6, "mute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$5;->val$data:Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "chatID":I
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 283
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const v5, 0x77359400

    add-int/2addr v5, v1

    iput v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 284
    iput-object p2, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 285
    iput-object p3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 286
    iput p4, v3, Lcom/vkontakte/android/UserProfile;->online:I

    .line 287
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v4, "x":Landroid/os/Bundle;
    const-string v5, "dnd"

    invoke-virtual {v4, v5, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v5, "mute"

    invoke-virtual {v4, v5, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    iput-object v4, v3, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 294
    invoke-static {v1, p2, p1, p3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 295
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 296
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 297
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 298
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "chatID":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "x":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v5

    goto :goto_0
.end method
