.class Lcom/vkontakte/android/CallActivity$9;
.super Landroid/view/OrientationEventListener;
.source "CallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 405
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "o"    # I

    .prologue
    const/16 v5, 0x13b

    const/16 v4, 0xe6

    const/16 v3, 0x87

    const/16 v2, 0x2d

    const/4 v1, -0x1

    .line 410
    if-ne p1, v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const/4 v0, -0x1

    .line 412
    .local v0, "orient":I
    if-gt p1, v5, :cond_2

    if-ge p1, v2, :cond_4

    if-ltz p1, :cond_4

    .line 413
    :cond_2
    const/4 v0, 0x0

    .line 421
    :cond_3
    :goto_1
    if-eq v0, v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$23(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$24(Lcom/vkontakte/android/CallActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/CallActivity;->access$25(Lcom/vkontakte/android/CallActivity;J)V

    .line 424
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$23(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/CallActivity;->access$26(Lcom/vkontakte/android/CallActivity;II)V

    .line 425
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$9;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1, v0}, Lcom/vkontakte/android/CallActivity;->access$27(Lcom/vkontakte/android/CallActivity;I)V

    goto :goto_0

    .line 414
    :cond_4
    if-ge p1, v5, :cond_5

    if-lt p1, v4, :cond_5

    .line 415
    const/16 v0, 0x10e

    .line 416
    goto :goto_1

    :cond_5
    if-ge p1, v4, :cond_6

    if-lt p1, v3, :cond_6

    .line 417
    const/16 v0, 0xb4

    .line 418
    goto :goto_1

    :cond_6
    if-ge p1, v3, :cond_3

    if-lt p1, v2, :cond_3

    .line 419
    const/16 v0, 0x5a

    goto :goto_1
.end method
