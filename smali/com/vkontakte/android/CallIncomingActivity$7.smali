.class Lcom/vkontakte/android/CallIncomingActivity$7;
.super Ljava/lang/Object;
.source "CallIncomingActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallIncomingActivity;->startRingtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallIncomingActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallIncomingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$7;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$7;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$5(Lcom/vkontakte/android/CallIncomingActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$7;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$5(Lcom/vkontakte/android/CallIncomingActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 229
    return-void
.end method
