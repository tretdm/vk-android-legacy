.class Lcom/vkontakte/android/ChatActivity$37$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$37;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$37;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$37;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$37$1;->this$1:Lcom/vkontakte/android/ChatActivity$37;

    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1870
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v1, 0x1

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :goto_0
    return-void

    .line 1871
    :catch_0
    move-exception v0

    goto :goto_0
.end method
