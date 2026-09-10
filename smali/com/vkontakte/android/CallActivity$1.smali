.class Lcom/vkontakte/android/CallActivity$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 101
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACCURACY CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 106
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "P "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$1(Lcom/vkontakte/android/CallActivity;)Z

    move-result v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$2(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$1;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$2(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/CallActivity;->access$3(Lcom/vkontakte/android/CallActivity;Z)V

    invoke-static {v2, v0}, Lcom/vkontakte/android/CallActivity;->access$4(Lcom/vkontakte/android/CallActivity;Z)V

    .line 112
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 108
    goto :goto_0

    :cond_2
    move v0, v1

    .line 109
    goto :goto_1
.end method
