.class Lcom/vkontakte/android/ChatActivity$25;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->loadUsers(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$25;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1201
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "profiles":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1188
    sget-object v1, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v1, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1190
    sget-object v1, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v1, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1192
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$15(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$16(Lcom/vkontakte/android/ChatActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 1193
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    new-instance v2, Lcom/vkontakte/android/ChatActivity$25$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ChatActivity$25$1;-><init>(Lcom/vkontakte/android/ChatActivity$25;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1196
    return-void

    .line 1184
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 1185
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$25;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
