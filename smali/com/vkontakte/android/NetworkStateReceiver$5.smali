.class Lcom/vkontakte/android/NetworkStateReceiver$5;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->updateFriendlist(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

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
    .line 362
    return-void
.end method

.method public success([Lcom/vkontakte/android/UserProfile;)V
    .locals 6
    .param p1, "list"    # [Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/NetworkStateReceiver$5$1;

    iget-object v5, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

    invoke-direct {v4, p0, p1, v5}, Lcom/vkontakte/android/NetworkStateReceiver$5$1;-><init>(Lcom/vkontakte/android/NetworkStateReceiver$5;[Lcom/vkontakte/android/UserProfile;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    .local v2, "thread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 320
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 322
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/NetworkStateReceiver$5$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NetworkStateReceiver$5$2;-><init>(Lcom/vkontakte/android/NetworkStateReceiver$5;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    .local v3, "thread2":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method
