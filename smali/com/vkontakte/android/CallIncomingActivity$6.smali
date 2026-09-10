.class Lcom/vkontakte/android/CallIncomingActivity$6;
.super Ljava/lang/Object;
.source "CallIncomingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallIncomingActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$6;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallIncomingActivity$6;)Lcom/vkontakte/android/CallIncomingActivity;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$6;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$6;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$4(Lcom/vkontakte/android/CallIncomingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VoipPing;

    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$6;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallIncomingActivity;->access$0(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VoipPing;-><init>(I)V

    .line 163
    new-instance v1, Lcom/vkontakte/android/CallIncomingActivity$6$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallIncomingActivity$6$1;-><init>(Lcom/vkontakte/android/CallIncomingActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipPing;->setCallback(Lcom/vkontakte/android/api/VoipPing$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 200
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
