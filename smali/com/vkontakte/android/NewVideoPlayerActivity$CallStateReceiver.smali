.class Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "NewVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1087
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2800(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2802(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 1090
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->pause()V

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2800(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2802(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 1096
    :cond_1
    return-void
.end method
