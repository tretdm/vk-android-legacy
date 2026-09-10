.class Lcom/vkontakte/android/CallActivity$19;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->hangup()V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$19;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$19;)Lcom/vkontakte/android/CallActivity;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19;->this$0:Lcom/vkontakte/android/CallActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 898
    new-instance v1, Lcom/vkontakte/android/api/VoipHangup;

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$21(Lcom/vkontakte/android/CallActivity;)I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$52(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_REPLIED:I

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/VoipHangup;-><init>(III)V

    .line 899
    new-instance v0, Lcom/vkontakte/android/CallActivity$19$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/CallActivity$19$1;-><init>(Lcom/vkontakte/android/CallActivity$19;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/VoipHangup;->setCallback(Lcom/vkontakte/android/api/VoipHangup$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 913
    return-void

    .line 898
    :cond_0
    sget v0, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_NOT_REPLIED:I

    goto :goto_0
.end method
