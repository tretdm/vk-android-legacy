.class Lcom/vkontakte/android/CallActivity$8;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$8;)Lcom/vkontakte/android/CallActivity;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0xb

    const v3, 0x460ca000    # 9000.0f

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$14(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/CallActivity;->access$15(Lcom/vkontakte/android/CallActivity;Z)V

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disableCamera()V

    .line 374
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$18(Lcom/vkontakte/android/CallActivity;Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/CallActivity;->access$19(Lcom/vkontakte/android/CallActivity;Z)V

    .line 387
    :cond_3
    :goto_2
    new-instance v0, Lcom/vkontakte/android/api/VoipSetDevices;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$21(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VoipSetDevices;-><init>(IIZ)V

    .line 388
    new-instance v1, Lcom/vkontakte/android/CallActivity$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$8$1;-><init>(Lcom/vkontakte/android/CallActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipSetDevices;->setCallback(Lcom/vkontakte/android/api/VoipSetDevices$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$22(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020204

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/CallActivity;->initCamera()V

    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$19(Lcom/vkontakte/android/CallActivity;Z)V

    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$8;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2

    .line 400
    :cond_5
    const v0, 0x7f020205

    goto :goto_3

    .line 377
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
