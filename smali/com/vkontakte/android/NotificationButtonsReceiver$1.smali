.class Lcom/vkontakte/android/NotificationButtonsReceiver$1;
.super Ljava/lang/Object;
.source "NotificationButtonsReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationButtonsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationButtonsReceiver;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationButtonsReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationButtonsReceiver$1;->this$0:Lcom/vkontakte/android/NotificationButtonsReceiver;

    iput p2, p0, Lcom/vkontakte/android/NotificationButtonsReceiver$1;->val$uid:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "uid"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/NotificationButtonsReceiver$1;->val$uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "friends.add"

    invoke-static {v1, v0}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 38
    return-void
.end method

.method public success(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 31
    return-void
.end method
