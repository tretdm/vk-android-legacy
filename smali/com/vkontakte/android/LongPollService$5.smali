.class Lcom/vkontakte/android/LongPollService$5;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->updateTabBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$5;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v1, 0x1

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0
.end method
