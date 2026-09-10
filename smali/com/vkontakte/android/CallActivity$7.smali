.class Lcom/vkontakte/android/CallActivity$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$7;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$7;->this$0:Lcom/vkontakte/android/CallActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 362
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 363
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$7;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$13(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020205

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 364
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const v1, 0x7f020204

    goto :goto_1
.end method
