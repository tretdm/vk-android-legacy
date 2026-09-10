.class Lcom/vkontakte/android/AudioAttachView$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioAttachView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioAttachView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 29
    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_ATTACH_VIEWS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "oid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, "aOid":I
    const-string v2, "aid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, "aId":I
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget v2, v2, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    iget v2, v2, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v0, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    const-string v3, "playing"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 36
    .end local v0    # "aId":I
    .end local v1    # "aOid":I
    :cond_0
    return-void
.end method
