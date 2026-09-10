.class Lcom/vkontakte/android/CallActivity$18;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->publish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;

.field private final synthetic val$stream:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$18;->this$0:Lcom/vkontakte/android/CallActivity;

    iput-object p2, p0, Lcom/vkontakte/android/CallActivity$18;->val$stream:Ljava/lang/String;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 857
    :try_start_0
    const-string v2, "vk_RTMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "publishing stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$18;->val$stream:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$18;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v2

    const-string v3, "createStream"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invoke(Ljava/lang/String;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 859
    .local v0, "result":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$18;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$18;->val$stream:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$18;->this$0:Lcom/vkontakte/android/CallActivity;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v5, v2}, Lcom/vkontakte/android/CallActivity;->access$51(Lcom/vkontakte/android/CallActivity;I)V

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->publish(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    .end local v0    # "result":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v1

    .line 861
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk_RTMP"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
