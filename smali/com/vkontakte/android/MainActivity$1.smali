.class Lcom/vkontakte/android/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    add-int v0, v1, v2

    .line 88
    .local v0, "sum":I
    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v1, v0}, Lcom/vkontakte/android/MainActivity;->access$0(Lcom/vkontakte/android/MainActivity;I)V

    .line 90
    .end local v0    # "sum":I
    :cond_0
    return-void
.end method
