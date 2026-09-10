.class Lcom/vkontakte/android/data/Messages$4;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$msg:Lcom/vkontakte/android/Message;

.field private final synthetic val$senderPhoto:Ljava/lang/String;

.field private final synthetic val$unreadCount:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/Message;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$4;->val$senderPhoto:Ljava/lang/String;

    iput p3, p0, Lcom/vkontakte/android/data/Messages$4;->val$unreadCount:I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    const v6, 0x77359400

    const/4 v5, 0x0

    .line 230
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 231
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iput-object p2, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 232
    if-nez p2, :cond_0

    .line 233
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->peer:I

    iput v4, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 236
    if-eqz p3, :cond_3

    .line 237
    iput-object p3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 241
    :cond_1
    :goto_0
    new-instance v2, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v2}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 242
    .local v2, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iput-object v4, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 243
    iget-object v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$senderPhoto:Ljava/lang/String;

    iput-object v4, v2, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 244
    iput-object v3, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 245
    iget v4, p0, Lcom/vkontakte/android/data/Messages$4;->val$unreadCount:I

    iput v4, v2, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 246
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 248
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 249
    if-nez p2, :cond_2

    .line 251
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v0, "args":Lorg/json/JSONObject;
    const-string v4, "chat_id"

    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string v4, "fields"

    const-string v5, "photo_rec,photo_medium_rec,sex"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v1, "data":Lorg/json/JSONObject;
    const-string v4, "id"

    iget-object v5, p0, Lcom/vkontakte/android/data/Messages$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v4, "messages.getChat"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getChatUsersResult"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v4, v0, v5, v1}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    return-void

    .line 238
    .end local v2    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 239
    invoke-static {p1}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 257
    .restart local v2    # "e":Lcom/vkontakte/android/DialogEntry;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 246
    :catch_1
    move-exception v4

    goto :goto_1
.end method
