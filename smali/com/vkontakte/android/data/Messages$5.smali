.class Lcom/vkontakte/android/data/Messages$5;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetChat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getChatUsersResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$5;->val$data:Lorg/json/JSONObject;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "adminID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$5;->val$data:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "chatID":I
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 282
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const v4, 0x77359400

    add-int/2addr v4, v1

    iput v4, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 283
    iput-object p2, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 284
    iput-object p3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 285
    iput p4, v3, Lcom/vkontakte/android/UserProfile;->online:I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 289
    invoke-static {v1, p2, p1, p3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 290
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 291
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 292
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 293
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v1    # "chatID":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v4

    goto :goto_0
.end method
