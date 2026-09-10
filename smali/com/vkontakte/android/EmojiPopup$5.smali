.class Lcom/vkontakte/android/EmojiPopup$5;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiPopup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiPopup;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup$5;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiPopup$5;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiPopup;->access$200(Lcom/vkontakte/android/EmojiPopup;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method
