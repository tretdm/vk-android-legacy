.class Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;
.super Lcom/vkontakte/android/ui/WindowCallbackDelegate;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0, p2}, Lcom/vkontakte/android/ui/WindowCallbackDelegate;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    :cond_0
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/WindowCallbackDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
