.class Lcom/vkontakte/android/NetworkStateReceiver$5$1;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver$5;->success([Lcom/vkontakte/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NetworkStateReceiver$5;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$list:[Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NetworkStateReceiver$5;[Lcom/vkontakte/android/UserProfile;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->this$1:Lcom/vkontakte/android/NetworkStateReceiver$5;

    iput-object p2, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    iput-object p3, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$context:Landroid/content/Context;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 296
    .local v2, "tt":J
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/FriendsCache;->replace([Lcom/vkontakte/android/UserProfile;Landroid/content/Context;)V

    .line 298
    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 299
    :cond_0
    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 300
    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_1

    .line 302
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 303
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    array-length v4, v4

    sput v4, Lcom/vkontakte/android/Global;->realFriendCount:I

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 305
    invoke-static {}, Lcom/vkontakte/android/Global;->sortFriendList()V

    .line 308
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/vkontakte/android/NetworkStateReceiver;->access$7(Landroid/content/Context;)V

    .line 310
    return-void

    .line 300
    .end local v0    # "i":I
    :cond_1
    aget-object v1, v5, v4

    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v7, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v0    # "i":I
    :cond_2
    sget-object v4, Lcom/vkontakte/android/Global;->friendHints:[I

    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$1;->val$list:[Lcom/vkontakte/android/UserProfile;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
