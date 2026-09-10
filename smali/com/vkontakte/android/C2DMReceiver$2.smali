.class Lcom/vkontakte/android/C2DMReceiver$2;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetFull$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/C2DMReceiver;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/C2DMReceiver;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/C2DMReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/C2DMReceiver$2;->this$0:Lcom/vkontakte/android/C2DMReceiver;

    iput p2, p0, Lcom/vkontakte/android/C2DMReceiver$2;->val$uid:I

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public success(Lcom/vkontakte/android/Message;)V
    .locals 5
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 157
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$2;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$2;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "peer_id"

    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$2;->val$uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/vkontakte/android/C2DMReceiver$2;->this$0:Lcom/vkontakte/android/C2DMReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Lcom/vkontakte/android/C2DMReceiver;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 166
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$2;->val$uid:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 168
    return-void
.end method
