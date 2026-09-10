.class Lcom/vkontakte/android/FilePickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity$1;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FilePickerActivity$1;)Lcom/vkontakte/android/FilePickerActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity$1;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/vkontakte/android/FilePickerActivity$1$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FilePickerActivity$1$1;-><init>(Lcom/vkontakte/android/FilePickerActivity$1;)V

    .line 61
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity$1;->this$0:Lcom/vkontakte/android/FilePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FilePickerActivity;->access$3(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
