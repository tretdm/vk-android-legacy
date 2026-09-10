.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 58
    :cond_0
    const-string v0, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$1;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 61
    :cond_1
    return-void
.end method
