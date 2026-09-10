.class Lcom/vkontakte/android/CallActivity$21;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onCommand(Ljava/lang/String;[Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disableCamera()V

    .line 962
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 963
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 964
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/CallActivity;->access$18(Lcom/vkontakte/android/CallActivity;Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 967
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1, v3}, Lcom/vkontakte/android/CallActivity;->access$19(Lcom/vkontakte/android/CallActivity;Z)V

    .line 968
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 969
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 970
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 971
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$22(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 972
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$55(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 973
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$22(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 974
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$55(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 975
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$21;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$55(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 977
    return-void

    .line 965
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
