.class Lcom/vkontakte/android/LongPollService$6;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->processExtendedMessage(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$6;->this$0:Lcom/vkontakte/android/LongPollService;

    iput-object p2, p0, Lcom/vkontakte/android/LongPollService$6;->val$msg:Lcom/vkontakte/android/Message;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    const/4 v3, 0x0

    const v4, 0x77359400

    .line 677
    invoke-static {p1}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "ph":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/LongPollService$6;->val$msg:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v2, v4

    invoke-static {v2, v3, v3, v1}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "id"

    iget-object v3, p0, Lcom/vkontakte/android/LongPollService$6;->val$msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/vkontakte/android/LongPollService$6;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    return-void
.end method
